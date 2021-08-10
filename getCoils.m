function [coils,Boffset] = getCoils (configuration)


switch configuration
            case 'SSBEC'
            coils.current(1)=5; %'BMVH';
            coils.current(2)=0; %'BMVAH';
            coils.current(3)=2; %'CCTWH';
            coils.current(4)=0; %'CCTWAH';
            coils.current(5)=0.3; %'CCSOH';
            coils.current(6)=0; %'CCSOAH';
            coils.current(7)=1.25; %'ALZH';
            coils.current(8)=0; %'ALZAH';
            coils.current(9)=1.24; %'ALYH';
            coils.current(10)=-5.8; %'ALYAH';
            coils.current(11)=0; %'ALXH';
            coils.current(12)=0; %'ALXAH';
            coils.current(13)=-0; %'RTVH';
            coils.current(14)=2.45; %'RTVAH';
            coils.current(15)=-1.02; %'RTHH';
            coils.current(16)=2.45; %'RTHAH';

            coils.fieldname=createfieldname(coils);


            Boffset.Bx=0+0.2+0.4-0.1; % Capture
            Boffset.By=-0.4+0.45; % Capture
            Boffset.Bz=-0.4-0.4+0.2-0.2; % Capture
            
        case 'Capture'
            coils.current(1)=5; %'BMVH';
            coils.current(2)=0; %'BMVAH';
            coils.current(3)=3.1; %'CCTWH';
            coils.current(4)=0; %'CCTWAH';
            coils.current(5)=0; %'CCSOH';
            coils.current(6)=0; %'CCSOAH';
            coils.current(7)=1.1; %'ALZH';
            coils.current(8)=0; %'ALZAH';
            coils.current(9)=1.1; %'ALYH';
            coils.current(10)=-5.8; %'ALYAH';
            coils.current(11)=0; %'ALXH';
            coils.current(12)=0; %'ALXAH';
            coils.current(13)=-0; %'RTVH';
            coils.current(14)=2.3; %'RTVAH';
            coils.current(15)=-1.35; %'RTHH';
            coils.current(16)=2.3; %'RTHAH';

            coils.fieldname=createfieldname(coils);


            Boffset.Bx=0+0.2+0.4-0.1; % Capture
            Boffset.By=-0.4+0.45; % Capture
            Boffset.Bz=-0.4-0.4+0.2-0.2; % Capture
        case 'CAPTURE87MOTfieldOFF'
                suffix='(-CaptureMOT87Sr)';
                on = true;
 
                
                coils.current(1)=0*5*0; %'BMVH';           %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(2)=0*on; %'BMVAH';          %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020

                coils.current(3)=1.8*0; %'CCTWH';          %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020

                coils.current(4)=+0*on; %'CCTWAH';        %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(5)=-0*on ; %'CCSOH'; ?      %%Negative acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(6)=+0*on; %'CCSOAH';        %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020

                coils.current(7)=+1.1*0;  %'ALZH';       %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(8)=+0.0*on;  %'ALZAH';      %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(9)=-1.25*0;  %'ALYH';      %%Negative acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(10)=-5.3*on; %'ALYAH';      %%Negative acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(11)=0; %'ALXH';             %%Coil is disconected on experiment 
                coils.current(12)=0; %'ALXAH';            %%Coil is disconected on experiment 
                coils.current(13)=-0; %'RTVH';            %%Negative acording to S.B thesis  %Recheck %Recheck @experiment December-21-2020
                coils.current(14)= 2.45*0; %'RTVAH';     %%Positive acording to S.B thesis  %Recheck %Recheck @experiment December-21-2020
                coils.current(15)=-1.02*0;  %'RTHH';     %%Negative according to S.B Thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(16)= 2.45*0;  %'RTHAH';    %%Positive acording to S.B thesis  %Recheck %Recheck @experiment December-21-2020


                coils.fieldname=createfieldname(coils);


                Boffset.Bx=0.5*on; % Capture
                Boffset.By=0.05*on; % Capture
                Boffset.Bz=-0.8*on; % Capture
        case 'CAPTURE87Sr'
                suffix='(-CaptureMOT87Sr)';
                on = true;
 
                
                coils.current(1)=5*on; %'BMVH';           %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(2)=0*on; %'BMVAH';          %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020

                coils.current(3)=1.8*on; %'CCTWH';          %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020

                coils.current(4)=+0*on; %'CCTWAH';        %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(5)=-0*on ; %'CCSOH'; ?      %%Negative acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(6)=+0*on; %'CCSOAH';        %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020

                coils.current(7)=+1.1*on;  %'ALZH';       %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(8)=+0.0*on;  %'ALZAH';      %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(9)=-1.25*on;  %'ALYH';      %%Negative acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(10)=-5.3*on; %'ALYAH';      %%Negative acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(11)=0; %'ALXH';             %%Coil is disconected on experiment 
                coils.current(12)=0; %'ALXAH';            %%Coil is disconected on experiment 
                coils.current(13)=-0; %'RTVH';            %%Negative acording to S.B thesis  %Recheck %Recheck @experiment December-21-2020
                coils.current(14)= 2.45*on; %'RTVAH';     %%Positive acording to S.B thesis  %Recheck %Recheck @experiment December-21-2020
                coils.current(15)=-1.02*on;  %'RTHH';     %%Negative according to S.B Thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(16)= 2.45*on;  %'RTHAH';    %%Positive acording to S.B thesis  %Recheck %Recheck @experiment December-21-2020


                coils.fieldname=createfieldname(coils);


                Boffset.Bx=0.5*on; % Capture
                Boffset.By=0.05*on; % Capture
                Boffset.Bz=-0.8*on; % Capture
            case 'other1'
                suffix='(-CaptureMOT87Sr)';
                on = true;
 
                
                coils.current(1)=5*on; %'BMVH';           %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(2)=0*on; %'BMVAH';          %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020

                coils.current(3)=1.8*on; %'CCTWH';          %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020

                coils.current(4)=+0*on; %'CCTWAH';        %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(5)=-0.3*on ; %'CCSOH'; ?      %%Negative acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(6)=+0*on; %'CCSOAH';        %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020

                coils.current(7)=+0.08*on;  %'ALZH';       %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(8)=+0.0*on;  %'ALZAH';      %%Positive acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(9)=-0.65*on;  %'ALYH';      %%Negative acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(10)=-5.3*on; %'ALYAH';      %%Negative acording to S.B thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(11)=0; %'ALXH';             %%Coil is disconected on experiment 
                coils.current(12)=0; %'ALXAH';            %%Coil is disconected on experiment 
                coils.current(13)=-0; %'RTVH';            %%Negative acording to S.B thesis  %Recheck %Recheck @experiment December-21-2020
                coils.current(14)= 2.45*on; %'RTVAH';     %%Positive acording to S.B thesis  %Recheck %Recheck @experiment December-21-2020
                coils.current(15)=-1.2*on;  %'RTHH';     %%Negative according to S.B Thesis %Recheck %Recheck @experiment December-21-2020
                coils.current(16)= 2.45*on;  %'RTHAH';    %%Positive acording to S.B thesis  %Recheck %Recheck @experiment December-21-2020


                coils.fieldname=createfieldname(coils);


                Boffset.Bx=0+0.2+0.4-0.1; % Capture
                Boffset.By=-0.4+0.45; % Capture
                Boffset.Bz=-0.4-0.4+0.2-0.2; % Capture
          case 'AllZero'
              on = 0
                suffix='(-CaptureMOT87Sr)';
                coils.current(1)=0; %'BMVH'; %%
                coils.current(2)=0; %'BMVAH'; %%

                coils.current(3)=0; %'CCTWH'?; %%

                coils.current(4)=0; %'CCTWAH'; %%
                coils.current(5)=0; %'CCSOH'; %%
                coils.current(6)=0; %'CCSOAH'; %%

                coils.current(7)=0; %'ALZH'; %%
                coils.current(8)=0; %'ALZAH'; %%
                coils.current(9)=0; %'ALYH';    %%
                coils.current(10)=0; %'ALYAH';   %%
                coils.current(11)=0; %'ALXH';
                coils.current(12)=0; %'ALXAH';
                coils.current(13)=0; %'RTVH';
                coils.current(14)=0; %'RTVAH'; %%
                coils.current(15)=0; %'RTHH';%%
                coils.current(16)=0; %'RTHAH'; %%

                coils.fieldname=createfieldname(coils);


                Boffset.Bx=0+0.2+0.4-0.1; % Capture
                Boffset.By=-0.4+0.45; % Capture
                Boffset.Bz=-0.4-0.4+0.2-0.2; % Capture

        case 'other'
            suffix='(-BMVHCON)';
                coils.current(1)=5; %'BMVH';
                coils.current(2)=0; %'BMVAH';
                coils.current(3)=0; %'CCTWH';
                coils.current(4)=0; %'CCTWAH';
                coils.current(5)=0; %'CCSOH';
                coils.current(6)=0; %'CCSOAH';

                coils.current(7)=0; %'ALZH';
                coils.current(8)=0; %'ALZAH';
                coils.current(9)=0; %'ALYH';
                coils.current(10)=0; %'ALYAH';
                coils.current(11)=0; %'ALXH';
                coils.current(12)=0; %'ALXAH';
                coils.current(13)=0; %'RTVH';
                coils.current(14)=0; %'RTVAH';
                coils.current(15)=0; %'RTHH';
                coils.current(16)=0; %'RTHAH';

                coils.fieldname=createfieldname(coils);


                Boffset.Bx=0+0.2+0.4-0.1; % Capture
                Boffset.By=-0.4+0.45; % Capture
                Boffset.Bz=-0.4-0.4+0.2-0.2; % Capture



        case 'HPSD'
            suffix='(-HighPSDMOT2)';
            coils.current(1)=5; %'BMVH';
            coils.current(2)=0; %'BMVAH';
            coils.current(3)=3.1; %'CCTWH';
            coils.current(4)=0; %'CCTWAH';
            coils.current(5)=0; %'CCSOH';
            coils.current(6)=0; %'CCSOAH';
            coils.current(7)=0.105; %'ALZH';
            coils.current(8)=0; %'ALZAH';
            coils.current(9)=0.65; %'ALYH';
            coils.current(10)=-5.4; %'ALYAH';
            coils.current(11)=0; %'ALXH';
            coils.current(12)=0; %'ALXAH';
            coils.current(13)=-0; %'RTVH';
            coils.current(14)=2.3; %'RTVAH';
            coils.current(15)=-1.25; %'RTHH';
            coils.current(16)=2.3; %'RTHAH';

            coils.fieldname=createfieldname(coils);


            Boffset.Bx=0.45+0.1-0.05; % High N
            Boffset.By=-0.15-0.05-0.02; % High N
            Boffset.Bz=-0.6; % High N


        case 'TEST01'
            suffix='(-Test01)';
            coils.current(1)=5; %'BMVH';
            coils.current(2)=0; %'BMVAH';
            coils.current(3)=3.1; %'CCTWH';
            coils.current(4)=0; %'CCTWAH';
            coils.current(5)=0; %'CCSOH';
            coils.current(6)=0; %'CCSOAH';
    %         coils.current(7)=0.105-0.1; %'ALZH';
    %         coils.current(8)=-2; %'ALZAH';
            coils.current(7)=0.105; %'ALZH';
            coils.current(8)=0; %'ALZAH';
            coils.current(9)=0.65; %'ALYH';
            coils.current(10)=-5.4; %'ALYAH';
            coils.current(11)=0; %'ALXH';
            coils.current(12)=0; %'ALXAH';
            coils.current(13)=-0; %'RTVH';
            coils.current(14)=2.3; %'RTVAH'; 
            coils.current(15)=-1.25; %'RTHH';
            coils.current(16)=2.3; %'RTHAH';

            coils.fieldname=createfieldname(coils);


            Boffset.Bx=0.45+0.1-0.05; % High N
            Boffset.By=-0.15-0.05-0.02; % High N
            Boffset.Bz=-0.6; % High N
        
end   

srcalcoils;
end
