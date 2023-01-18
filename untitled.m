%% 
% synchronous generator 
% 
% 480 V , 60 Hz ,Delta connected 4 pole synchronous generator has a sync reaktance 
% 0.1 and armature resistance of 0.015
% 
% At full load , armature supllying 1200A at 0.8  PF lagging.
% 
% Under full load conditions ,The friction and windage losess are 40 KW ,and 
% Core losess are 30KW.Ignore  any field current losess.

ns=120*60/4

Vt=480
a=0.8

IA=554.24-415.68i

Ia_mag=abs(IA)
%losses
windage_losses=40000
Core_losses=30000
copper_losses=3*Ia_mag^2*(0.015)
zes=0.1i+0.015

%line current
I_line=1200*0.8+1200*0.6i

I_linemagn=abs(I_line)

I_linereel=real(I_line)

I_lineimage=imag(I_line)

EA=Vt+(IA)*zes
%induceed voltage
EA_mag=abs(EA)

%outpur voltage
Pout=sqrt(3)*Vt*I_linemagn*0.8
%input voltage
Pin=Pout+windage_losses+Core_losses+copper_losses
%efficiency
efficiency=(Pout/Pin)*100
%% 
%