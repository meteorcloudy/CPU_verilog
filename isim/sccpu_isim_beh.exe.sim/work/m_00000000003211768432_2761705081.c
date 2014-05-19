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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/XilinxProject/CPU/mux4x32.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};



static int sp_select(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    t0 = 1;
    xsi_set_current_line(33, ng0);
    t3 = (t1 + 3480);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);

LAB2:    t6 = ((char*)((ng1)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t6, 2);
    if (t7 == 1)
        goto LAB3;

LAB4:    t3 = ((char*)((ng2)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t3, 2);
    if (t7 == 1)
        goto LAB5;

LAB6:    t3 = ((char*)((ng3)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t3, 2);
    if (t7 == 1)
        goto LAB7;

LAB8:    t3 = ((char*)((ng4)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t3, 2);
    if (t7 == 1)
        goto LAB9;

LAB10:
LAB11:    t0 = 0;

LAB1:    return t0;
LAB3:    xsi_set_current_line(34, ng0);
    t8 = (t1 + 2840);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 2680);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 32);
    goto LAB11;

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t1 + 3000);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t1 + 2680);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB11;

LAB7:    xsi_set_current_line(36, ng0);
    t4 = (t1 + 3160);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t1 + 2680);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB11;

LAB9:    xsi_set_current_line(37, ng0);
    t4 = (t1 + 3320);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t1 + 2680);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB11;

}

static void Cont_40_0(char *t0)
{
    char t27[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    t1 = (t0 + 4400U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    t2 = (t0 + 1640U);
    t4 = *((char **)t2);
    t2 = (t0 + 1800U);
    t5 = *((char **)t2);
    t2 = (t0 + 1960U);
    t6 = *((char **)t2);
    t2 = (t0 + 2120U);
    t7 = *((char **)t2);
    t2 = (t0 + 4208);
    t8 = (t0 + 848);
    t9 = xsi_create_subprogram_invocation(t2, 0, t0, t8, 0, 0);
    t10 = (t0 + 2840);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);
    t11 = (t0 + 3000);
    xsi_vlogvar_assign_value(t11, t4, 0, 0, 32);
    t12 = (t0 + 3160);
    xsi_vlogvar_assign_value(t12, t5, 0, 0, 32);
    t13 = (t0 + 3320);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);
    t14 = (t0 + 3480);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 2);

LAB4:    t15 = (t0 + 4304);
    t16 = *((char **)t15);
    t17 = (t16 + 80U);
    t18 = *((char **)t17);
    t19 = (t18 + 272U);
    t20 = *((char **)t19);
    t21 = (t20 + 0U);
    t22 = *((char **)t21);
    t23 = ((int  (*)(char *, char *))t22)(t0, t16);
    if (t23 != 0)
        goto LAB6;

LAB5:    t16 = (t0 + 4304);
    t24 = *((char **)t16);
    t16 = (t0 + 2680);
    t25 = (t16 + 56U);
    t26 = *((char **)t25);
    memcpy(t27, t26, 8);
    t28 = (t0 + 848);
    t29 = (t0 + 4208);
    t30 = 0;
    xsi_delete_subprogram_invocation(t28, t24, t0, t29, t30);
    t31 = (t0 + 4800);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t27, 8);
    xsi_driver_vfirst_trans(t31, 0, 31);
    t36 = (t0 + 4720);
    *((int *)t36) = 1;

LAB1:    return;
LAB6:    t15 = (t0 + 4400U);
    *((char **)t15) = &&LAB4;
    goto LAB1;

}


extern void work_m_00000000003211768432_2761705081_init()
{
	static char *pe[] = {(void *)Cont_40_0};
	static char *se[] = {(void *)sp_select};
	xsi_register_didat("work_m_00000000003211768432_2761705081", "isim/sccpu_isim_beh.exe.sim/work/m_00000000003211768432_2761705081.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
