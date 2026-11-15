package com.cloud.tmc.miniapp.prepare.controller;

import androidx.annotation.NonNull;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public class OooO0O0 extends BasePrepareController {
    public OooO0O0(PrepareContext prepareContext, o000oOoO o000oooo) {
        new AtomicBoolean(true);
        bindContext(prepareContext, o000oooo);
        setInterceptors(new ArrayList());
    }

    @Override
    public void moveToError(PrepareException prepareException) {
        super.moveToError(prepareException);
    }

    @Override
    public void onGetAppInfo(@NonNull AppModel appModel) {
        super.onGetAppInfo(appModel);
    }
}
