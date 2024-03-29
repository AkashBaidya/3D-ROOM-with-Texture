precision mediump float;       
                               
uniform vec3 u_LightPos;       
 
varying vec3 v_Position;       
varying vec4 v_Color;          
                               
varying vec3 v_Normal;         
 

void main()
{
   
    float distance = length(u_LightPos - v_Position);
 
    vec3 lightVector = normalize(u_LightPos - v_Position);
    
    float diffuse = max(dot(v_Normal, lightVector), 2.5);
  
    diffuse = diffuse * (1.0 / (1.0 + (0.25 * distance * distance)));
 
    gl_FragColor = v_Color * diffuse;
}