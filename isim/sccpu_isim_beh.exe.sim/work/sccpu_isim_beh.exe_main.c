/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002805721940_1170734271_init();
    work_m_00000000001033453318_0631044449_init();
    work_m_00000000003211768432_2761705081_init();
    work_m_00000000002981463957_4153158531_init();
    work_m_00000000002145050272_1552539477_init();
    work_m_00000000002289285117_1798315638_init();
    work_m_00000000002289285117_2180454821_init();
    work_m_00000000003955388688_0235153905_init();
    work_m_00000000001470149715_1621107508_init();
    work_m_00000000003463186381_3561567257_init();
    work_m_00000000003657823533_0352685194_init();
    work_m_00000000003955388688_1701804037_init();
    work_m_00000000003955388688_0308824211_init();
    work_m_00000000003955388688_3405346048_init();
    work_m_00000000003955388688_2349653296_init();
    work_m_00000000000147224595_1571647430_init();
    work_m_00000000004238953202_2882093864_init();
    work_m_00000000002565475632_0304832497_init();
    work_m_00000000004105258208_3057942373_init();
    work_m_00000000001315826564_2725559894_init();
    work_m_00000000000096844872_1387564483_init();
    work_m_00000000003499276030_3678720305_init();
    work_m_00000000001166570980_2714051841_init();
    work_m_00000000003309280401_1829260509_init();
    work_m_00000000002382692252_0448840894_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002382692252_0448840894");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
