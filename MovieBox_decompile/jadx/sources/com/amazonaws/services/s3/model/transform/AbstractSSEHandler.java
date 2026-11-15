package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;

abstract class AbstractSSEHandler extends AbstractHandler implements ServerSideEncryptionResult {
    AbstractSSEHandler() {
    }

    protected abstract ServerSideEncryptionResult f();

    @Override
    public final void setSSEAlgorithm(String str) {
        ServerSideEncryptionResult serverSideEncryptionResultF = f();
        if (serverSideEncryptionResultF != null) {
            serverSideEncryptionResultF.setSSEAlgorithm(str);
        }
    }

    @Override
    public final void setSSECustomerAlgorithm(String str) {
        ServerSideEncryptionResult serverSideEncryptionResultF = f();
        if (serverSideEncryptionResultF != null) {
            serverSideEncryptionResultF.setSSECustomerAlgorithm(str);
        }
    }

    @Override
    public final void setSSECustomerKeyMd5(String str) {
        ServerSideEncryptionResult serverSideEncryptionResultF = f();
        if (serverSideEncryptionResultF != null) {
            serverSideEncryptionResultF.setSSECustomerKeyMd5(str);
        }
    }
}
