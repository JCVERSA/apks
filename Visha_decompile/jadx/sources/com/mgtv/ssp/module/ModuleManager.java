package com.mgtv.ssp.module;

import java.io.PrintStream;

public class ModuleManager {
    public static final String KEY_INIT = "INIT";
    public static final String MODULE_DOWN = "module_download";
    public static final String MODULE_SSP = "module_ssp";
    public static final int WHAT_REPORT_DOWN = 1;
    private static ModuleManager inst;
    ModuleInterface moduleDownload;
    ModuleInterface moduleSsp;

    public static ModuleManager getInst() {
        if (inst == null) {
            synchronized (ModuleManager.class) {
                try {
                    if (inst == null) {
                        inst = new ModuleManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return inst;
    }

    public static int getModuleIntInfo(String str, String str2, String str3, int i) {
        PrintStream printStream = System.out;
        printStream.println("moduleName down " + str);
        if (!MODULE_DOWN.equals(str) || getInst().getModuleDownload() == null) {
            printStream.println("moduleName down mothed args is empty");
        } else {
            Object moduleData = getInst().getModuleDownload().getModuleData(str2, str3);
            if (moduleData != null && (moduleData instanceof Integer)) {
                return ((Integer) moduleData).intValue();
            }
        }
        return i;
    }

    public static Object getModuleObjectInfo(String str, String str2, String str3) {
        if (!MODULE_DOWN.equals(str) || getInst().getModuleDownload() == null) {
            return null;
        }
        return getInst().getModuleDownload().getModuleData(str2, str3);
    }

    public static String getModuleStringInfo(String str, String str2, String str3) {
        Object moduleData;
        return (!MODULE_DOWN.equals(str) || getInst().getModuleDownload() == null || (moduleData = getInst().getModuleDownload().getModuleData(str2, str3)) == null || !(moduleData instanceof String)) ? "" : (String) moduleData;
    }

    public static boolean isInited() {
        PrintStream printStream = System.out;
        printStream.println("Module isInited ");
        if (getInst().getModuleSsp() == null) {
            printStream.println("Module isInited  == null");
            return false;
        }
        Object moduleData = getInst().getModuleSsp().getModuleData(KEY_INIT, "");
        if (moduleData == null || !(moduleData instanceof Boolean)) {
            return false;
        }
        return ((Boolean) moduleData).booleanValue();
    }

    public static void reportDownload(String... strArr) {
        PrintStream printStream = System.out;
        printStream.println("Module reportDownload ");
        if (getInst().getModuleSsp() != null) {
            getInst().getModuleSsp().noticeModule(1, strArr);
        } else {
            printStream.println("Module reportDownload getModuleSsp == null");
        }
    }

    public ModuleInterface getModuleDownload() {
        return this.moduleDownload;
    }

    public ModuleInterface getModuleSsp() {
        return this.moduleSsp;
    }

    public void setModuleDownload(ModuleInterface moduleInterface) {
        this.moduleDownload = moduleInterface;
    }

    public void setModuleSsp(ModuleInterface moduleInterface) {
        this.moduleSsp = moduleInterface;
    }
}
