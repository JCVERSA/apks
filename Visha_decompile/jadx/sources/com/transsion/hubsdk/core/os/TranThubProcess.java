package com.transsion.hubsdk.core.os;

import com.transsion.hubsdk.interfaces.os.ITranProcessAdapter;
import com.transsion.hubsdk.os.TranProcess;

public class TranThubProcess implements ITranProcessAdapter {
    @Override
    public String getAllCpuLoading() {
        return TranProcess.getAllCpuLoading();
    }

    @Override
    public double getCpuInfo() {
        return TranProcess.getCpuInfo();
    }
}
