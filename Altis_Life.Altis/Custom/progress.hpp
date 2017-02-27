class RscRLActionProgress
{
 idd=24026;
 onLoad="uiNamespace setVariable ['RscRLActionProgress', _this select 0];";
 onUnload="uiNamespace setVariable ['RscRLActionProgress', displayNull]";
 duration=999999;
 class controls {
 class Background: Life_RscText {
 idc = -1;
 x = 0;
 y = -0.03;
 w = 1;
 h = 0.03;
 colorBackground[] = {0, 0, 0, 0.7};
 };
 class ProgressBackground: Life_RscText {
 idc = 4001;
 x = 0.01;
 y = -0.02;
 w = 0.98;
 h = 0.01;
 colorBackground[] = {0, 0, 0, 0.5};
 };
 class Progress: Life_RscText {
 idc = 4000;
 x = 0.01;
 y = -0.02;
 w = 0.98;
 h = 0.01;
 colorBackground[] = {0, 0.5, 1, 1};
 };
 class Label: Life_RscText {
 idc = 4002;
 x = 0;
 y = -0.08;
 w = 1;
 h = 0.04;
 colorBackground[]={0,0,0,0};
 style = 1;
 sizeEx = 0.04;
 colorText[]={1,1,1,1};
 text = "";
 };
 };
};