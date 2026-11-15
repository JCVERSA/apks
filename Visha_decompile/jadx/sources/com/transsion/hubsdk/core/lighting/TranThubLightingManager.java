package com.transsion.hubsdk.core.lighting;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SharedMemory;
import android.util.SparseArray;
import com.transsion.hubsdk.api.lighting.LightingConfigChangeListener;
import com.transsion.hubsdk.api.lighting.TranEffectConfig;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.lighting.ITranLightingManagerAdapter;
import com.transsion.hubsdk.lighting.ITranLightingConfigChangeListener;
import com.transsion.hubsdk.lighting.ITranLightingManager;
import com.transsion.hubsdk.lighting.TranLightingConfig;
import com.transsion.hubsdk.lighting.TranSceneConfig;
import com.transsion.hubsdk.lighting.TranSharedBufferHandle;
import com.transsion.hubsdk.transs.TranSystemServerServiceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class TranThubLightingManager implements ITranLightingManagerAdapter {
    private static final String TAG = "TranThubLightingManager";
    private static IBinder mToken = new Binder();
    private IBinder mBinder;
    private final IBinder.DeathRecipient mDeathRecipient;
    private final Map<LightingConfigChangeListener, ITranLightingConfigChangeListener> mListenerMap = new HashMap();
    private ITranLightingManager mService;

    public class ConfigChangeListenerStub extends ITranLightingConfigChangeListener.Stub {
        private final LightingConfigChangeListener mListener;

        public ConfigChangeListenerStub(LightingConfigChangeListener lightingConfigChangeListener) {
            this.mListener = lightingConfigChangeListener;
        }

        public void onCustomEffectAdded(int i) {
            LightingConfigChangeListener lightingConfigChangeListener = this.mListener;
            if (lightingConfigChangeListener == null) {
                return;
            }
            lightingConfigChangeListener.onCustomEffectAdded(i);
        }

        public void onLightingConfigChanged(TranLightingConfig tranLightingConfig) {
            com.transsion.hubsdk.api.lighting.TranLightingConfig tranLightingConfigConvertLighting;
            if (this.mListener == null || tranLightingConfig == null || (tranLightingConfigConvertLighting = TranThubLightingManager.this.convertLighting(tranLightingConfig)) == null) {
                return;
            }
            this.mListener.onLightingConfigChanged(tranLightingConfigConvertLighting);
        }

        public void onSceneConfigChanged(int i, TranSceneConfig tranSceneConfig) {
            com.transsion.hubsdk.api.lighting.TranSceneConfig tranSceneConfigConvertScene;
            if (this.mListener == null || tranSceneConfig == null || (tranSceneConfigConvertScene = TranThubLightingManager.this.convertScene(tranSceneConfig)) == null) {
                return;
            }
            this.mListener.onSceneConfigChanged(i, tranSceneConfigConvertScene);
        }
    }

    public TranThubLightingManager() {
        IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() {
            @Override
            public void binderDied() {
                ArrayList arrayList;
                TranSdkLog.e(TranThubLightingManager.TAG, "ITranLightingManager binder died, notifying listeners");
                synchronized (TranThubLightingManager.this) {
                    arrayList = new ArrayList(TranThubLightingManager.this.mListenerMap.keySet());
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    try {
                        ((LightingConfigChangeListener) it.next()).onServiceDied();
                    } catch (Exception e) {
                        TranSdkLog.e(TranThubLightingManager.TAG, "Error notifying listener on service death", e);
                    }
                }
            }
        };
        this.mDeathRecipient = deathRecipient;
        IBinder serviceIBinder = TranSystemServerServiceManager.getServiceIBinder("tran_lighting");
        this.mBinder = serviceIBinder;
        this.mService = ITranLightingManager.Stub.asInterface(serviceIBinder);
        IBinder iBinder = this.mBinder;
        if (iBinder != null) {
            try {
                iBinder.linkToDeath(deathRecipient, 0);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "Unable to register DeathRecipient for: " + this.mService, e);
            }
        }
    }

    private TranEffectConfig convertEffect(com.transsion.hubsdk.lighting.TranEffectConfig tranEffectConfig) {
        if (tranEffectConfig == null) {
            return null;
        }
        TranEffectConfig tranEffectConfig2 = new TranEffectConfig(tranEffectConfig.getEffectId(), tranEffectConfig.getColor(), tranEffectConfig.isSupportColor(), tranEffectConfig.getEffectParameter(), tranEffectConfig.isUnlocked(), tranEffectConfig.isHidden(), tranEffectConfig.isPrebuilt(), tranEffectConfig.getCreatedTime(), tranEffectConfig.getExtraData() != null ? new Bundle(tranEffectConfig.getExtraData()) : null);
        tranEffectConfig2.setCustomFilePath(tranEffectConfig.getCustomFilePath());
        tranEffectConfig2.setPlayTime(tranEffectConfig.getPlayTime());
        tranEffectConfig2.setType(tranEffectConfig.getType());
        tranEffectConfig2.setPara(tranEffectConfig.getPara());
        tranEffectConfig2.setPara1(tranEffectConfig.getPara1());
        tranEffectConfig2.setPara2(tranEffectConfig.getPara2());
        tranEffectConfig2.setPara3(tranEffectConfig.getPara3());
        return tranEffectConfig2;
    }

    public com.transsion.hubsdk.api.lighting.TranLightingConfig convertLighting(TranLightingConfig tranLightingConfig) {
        if (tranLightingConfig == null) {
            return null;
        }
        SparseArray sparseArray = new SparseArray();
        SparseArray sceneConfigs = tranLightingConfig.getSceneConfigs();
        if (sceneConfigs != null) {
            for (int i = 0; i < sceneConfigs.size(); i++) {
                int iKeyAt = sceneConfigs.keyAt(i);
                com.transsion.hubsdk.api.lighting.TranSceneConfig tranSceneConfigConvertScene = convertScene((TranSceneConfig) sceneConfigs.valueAt(i));
                if (tranSceneConfigConvertScene != null) {
                    sparseArray.put(iKeyAt, tranSceneConfigConvertScene);
                }
            }
        }
        com.transsion.hubsdk.api.lighting.TranLightingConfig tranLightingConfig2 = new com.transsion.hubsdk.api.lighting.TranLightingConfig(sparseArray, tranLightingConfig.getMinBrightness(), tranLightingConfig.getMaxBrightness(), tranLightingConfig.getDefaultBrightness(), tranLightingConfig.getStartHour(), tranLightingConfig.getStartMinute(), tranLightingConfig.getEndHour(), tranLightingConfig.getEndMinute(), tranLightingConfig.getBundle() != null ? new Bundle(tranLightingConfig.getBundle()) : null);
        tranLightingConfig2.setEnable(tranLightingConfig.isEnable());
        tranLightingConfig2.mLowBattery = tranLightingConfig.isLowBattery();
        tranLightingConfig2.mDoNotDisturb = tranLightingConfig.isDoNotDisturb();
        tranLightingConfig2.mSatelliteMode = tranLightingConfig.isSatelliteMode();
        tranLightingConfig2.mCustomEffectVersion = tranLightingConfig.mCustomEffectVersion;
        tranLightingConfig2.mConfigVersion = tranLightingConfig.mConfigVersion;
        tranLightingConfig2.setPara(tranLightingConfig.getPara());
        tranLightingConfig2.setPara1(tranLightingConfig.getPara1());
        tranLightingConfig2.setPara2(tranLightingConfig.getPara2());
        tranLightingConfig2.setPara3(tranLightingConfig.getPara3());
        tranLightingConfig2.setTimeMode(tranLightingConfig.getTimeMode());
        tranLightingConfig2.setCustomStartHour(tranLightingConfig.getCustomStartHour());
        tranLightingConfig2.setCustomStartMinute(tranLightingConfig.getCustomStartMinute());
        tranLightingConfig2.setCustomEndHour(tranLightingConfig.getCustomEndHour());
        tranLightingConfig2.setCustomEndMinute(tranLightingConfig.getCustomEndMinute());
        return tranLightingConfig2;
    }

    public com.transsion.hubsdk.api.lighting.TranSceneConfig convertScene(TranSceneConfig tranSceneConfig) {
        if (tranSceneConfig == null) {
            return null;
        }
        SparseArray sparseArray = new SparseArray();
        SparseArray supportEffects = tranSceneConfig.getSupportEffects();
        if (supportEffects != null) {
            for (int i = 0; i < supportEffects.size(); i++) {
                int iKeyAt = supportEffects.keyAt(i);
                TranEffectConfig tranEffectConfigConvertEffect = convertEffect((com.transsion.hubsdk.lighting.TranEffectConfig) supportEffects.valueAt(i));
                if (tranEffectConfigConvertEffect != null) {
                    sparseArray.put(iKeyAt, tranEffectConfigConvertEffect);
                }
            }
        }
        com.transsion.hubsdk.api.lighting.TranSceneConfig tranSceneConfig2 = new com.transsion.hubsdk.api.lighting.TranSceneConfig(tranSceneConfig.getSceneId(), tranSceneConfig.getEnable(), sparseArray, tranSceneConfig.getChooseEffect(), tranSceneConfig.getPriority(), tranSceneConfig.isSupportBrightness(), tranSceneConfig.isMainUser(), tranSceneConfig.getBundle() != null ? new Bundle(tranSceneConfig.getBundle()) : null);
        tranSceneConfig2.mEffectSelectionMode = tranSceneConfig.mEffectSelectionMode;
        tranSceneConfig2.mEffectType = tranSceneConfig.mEffectType;
        tranSceneConfig2.mConstantEffectId = tranSceneConfig.mConstantEffectId;
        tranSceneConfig2.mIntermittentEffectId = tranSceneConfig.mIntermittentEffectId;
        tranSceneConfig2.mFixedEffectId = tranSceneConfig.mFixedEffectId;
        tranSceneConfig2.mRandomEffectId = tranSceneConfig.mRandomEffectId;
        tranSceneConfig2.mIsAffectedByGlobalSwitch = tranSceneConfig.mIsAffectedByGlobalSwitch;
        tranSceneConfig2.mSupportCustomEffect = tranSceneConfig.mSupportCustomEffect;
        tranSceneConfig2.setSupportColor(tranSceneConfig.mSupportColor);
        tranSceneConfig2.setSupportLightingDisplay(tranSceneConfig.mSupportLightingDisplay);
        tranSceneConfig2.setFft(tranSceneConfig.mFft);
        tranSceneConfig2.setLoop(tranSceneConfig.mLoop);
        tranSceneConfig2.setLedModeName(tranSceneConfig.mLedModeName);
        tranSceneConfig2.setPara1(tranSceneConfig.mPara1);
        tranSceneConfig2.setPara2(tranSceneConfig.mPara2);
        tranSceneConfig2.setPara3(tranSceneConfig.mPara3);
        tranSceneConfig2.setSubPriority(tranSceneConfig.mSubPriority);
        return tranSceneConfig2;
    }

    private com.transsion.hubsdk.lighting.TranEffectConfig convertToCommonEffect(TranEffectConfig tranEffectConfig) {
        if (tranEffectConfig == null) {
            return null;
        }
        com.transsion.hubsdk.lighting.TranEffectConfig tranEffectConfig2 = new com.transsion.hubsdk.lighting.TranEffectConfig(tranEffectConfig.getEffectId(), tranEffectConfig.getColor(), tranEffectConfig.isSupportColor(), tranEffectConfig.getEffectParameter(), tranEffectConfig.isUnlocked(), tranEffectConfig.isHidden(), tranEffectConfig.isPrebuilt(), tranEffectConfig.getCreatedTime(), tranEffectConfig.getExtraData());
        tranEffectConfig2.setCustomFilePath(tranEffectConfig.getCustomFilePath());
        tranEffectConfig2.setPlayTime(tranEffectConfig.getPlayTime());
        tranEffectConfig2.setType(tranEffectConfig.getType());
        tranEffectConfig2.setPara(tranEffectConfig.getPara());
        tranEffectConfig2.setPara1(tranEffectConfig.getPara1());
        tranEffectConfig2.setPara2(tranEffectConfig.getPara2());
        tranEffectConfig2.setPara3(tranEffectConfig.getPara3());
        return tranEffectConfig2;
    }

    private TranLightingConfig convertToCommonLighting(com.transsion.hubsdk.api.lighting.TranLightingConfig tranLightingConfig) {
        if (tranLightingConfig == null) {
            return null;
        }
        TranLightingConfig tranLightingConfig2 = new TranLightingConfig((SparseArray) null, tranLightingConfig.getMinBrightness(), tranLightingConfig.getMaxBrightness(), tranLightingConfig.getBrightness(), tranLightingConfig.getStartHour(), tranLightingConfig.getStartMinute(), tranLightingConfig.getEndHour(), tranLightingConfig.getEndMinute(), tranLightingConfig.getBundle());
        tranLightingConfig2.setEnable(tranLightingConfig.isEnable());
        tranLightingConfig2.mLowBattery = tranLightingConfig.mLowBattery;
        tranLightingConfig2.mDoNotDisturb = tranLightingConfig.mDoNotDisturb;
        tranLightingConfig2.mSatelliteMode = tranLightingConfig.mSatelliteMode;
        tranLightingConfig2.mCustomEffectVersion = tranLightingConfig.mCustomEffectVersion;
        tranLightingConfig2.mConfigVersion = tranLightingConfig.mConfigVersion;
        tranLightingConfig2.setPara(tranLightingConfig.getPara());
        tranLightingConfig2.setPara1(tranLightingConfig.getPara1());
        tranLightingConfig2.setPara2(tranLightingConfig.getPara2());
        tranLightingConfig2.setPara3(tranLightingConfig.getPara3());
        tranLightingConfig2.setTimeMode(tranLightingConfig.getTimeMode());
        tranLightingConfig2.setCustomStartHour(tranLightingConfig.getCustomStartHour());
        tranLightingConfig2.setCustomStartMinute(tranLightingConfig.getCustomStartMinute());
        tranLightingConfig2.setCustomEndHour(tranLightingConfig.getCustomEndHour());
        tranLightingConfig2.setCustomEndMinute(tranLightingConfig.getCustomEndMinute());
        return tranLightingConfig2;
    }

    private TranSceneConfig convertToCommonScene(com.transsion.hubsdk.api.lighting.TranSceneConfig tranSceneConfig) {
        if (tranSceneConfig == null) {
            return null;
        }
        TranSceneConfig tranSceneConfig2 = new TranSceneConfig(tranSceneConfig.getSceneId(), tranSceneConfig.getEnable(), (SparseArray) null, tranSceneConfig.getChooseEffect(), tranSceneConfig.getPriority(), tranSceneConfig.isSupportBrightness(), tranSceneConfig.isMainUser(), tranSceneConfig.getExtraData());
        tranSceneConfig2.mEffectSelectionMode = tranSceneConfig.mEffectSelectionMode;
        tranSceneConfig2.mEffectType = tranSceneConfig.mEffectType;
        tranSceneConfig2.mConstantEffectId = tranSceneConfig.mConstantEffectId;
        tranSceneConfig2.mIntermittentEffectId = tranSceneConfig.mIntermittentEffectId;
        tranSceneConfig2.mFixedEffectId = tranSceneConfig.mFixedEffectId;
        tranSceneConfig2.mRandomEffectId = tranSceneConfig.mRandomEffectId;
        tranSceneConfig2.mIsAffectedByGlobalSwitch = tranSceneConfig.mIsAffectedByGlobalSwitch;
        tranSceneConfig2.mSupportCustomEffect = tranSceneConfig.mSupportCustomEffect;
        tranSceneConfig2.mSupportColor = tranSceneConfig.isSupportColor();
        tranSceneConfig2.mSupportLightingDisplay = tranSceneConfig.isSupportLightingDisplay();
        tranSceneConfig2.mFft = tranSceneConfig.getFft();
        tranSceneConfig2.mLoop = tranSceneConfig.getLoop();
        tranSceneConfig2.mLedModeName = tranSceneConfig.getLedModeName();
        tranSceneConfig2.mPara1 = tranSceneConfig.getPara1();
        tranSceneConfig2.mPara2 = tranSceneConfig.getPara2();
        tranSceneConfig2.mPara3 = tranSceneConfig.getPara3();
        tranSceneConfig2.mSubPriority = tranSceneConfig.getSubPriority();
        return tranSceneConfig2;
    }

    @Override
    public SharedMemory acquireBuffer(int i) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                TranSharedBufferHandle tranSharedBufferHandleAcquireBuffer = iTranLightingManager.acquireBuffer(i);
                if (tranSharedBufferHandleAcquireBuffer == null || tranSharedBufferHandleAcquireBuffer.mPfd == null || Build.VERSION.SDK_INT < 33) {
                    return null;
                }
                return SharedMemory.fromFileDescriptor(tranSharedBufferHandleAcquireBuffer.mPfd);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "getCustomEffectById: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
        return null;
    }

    @Override
    public boolean addEffect(int[] iArr, int i, int i2, int i3, String str) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return false;
        }
        try {
            return iTranLightingManager.addEffect(iArr, i, i2, i3, str);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "addEffect: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public void bindSceneWithCustomEffect(int[] iArr, int i) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.bindSceneWithCustomEffect(iArr, i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "bindSceneWithCustomEffect: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public boolean delEffect(int i) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return false;
        }
        try {
            return iTranLightingManager.delEffect(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "delEffect: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public void drawBuffer(int i) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.drawBuffer(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "getCustomEffectById: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public List<TranEffectConfig> getAllCustomEffects() {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return null;
        }
        try {
            List allCustomEffects = iTranLightingManager.getAllCustomEffects();
            if (allCustomEffects == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = allCustomEffects.iterator();
            while (it.hasNext()) {
                TranEffectConfig tranEffectConfigConvertEffect = convertEffect((com.transsion.hubsdk.lighting.TranEffectConfig) it.next());
                if (tranEffectConfigConvertEffect != null) {
                    arrayList.add(tranEffectConfigConvertEffect);
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getAllCustomEffects: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public int[] getColorIds() {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return null;
        }
        try {
            return iTranLightingManager.getColorIds();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getColorIds: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public TranEffectConfig getCustomEffectById(int i) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return null;
        }
        try {
            com.transsion.hubsdk.lighting.TranEffectConfig customEffectById = iTranLightingManager.getCustomEffectById(i);
            if (customEffectById == null) {
                return null;
            }
            return convertEffect(customEffectById);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getCustomEffectById: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public TranEffectConfig getEffectConfig(int i, int i2) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return null;
        }
        try {
            return convertEffect(iTranLightingManager.getEffectConfig(i, i2));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getEffectConfig: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public int[] getEffectIdList() {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return null;
        }
        try {
            return iTranLightingManager.getEffectIdList();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getEffectIdList: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public com.transsion.hubsdk.api.lighting.TranLightingConfig getLightingConfig() {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return null;
        }
        try {
            return convertLighting(iTranLightingManager.getLightingConfig());
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getLightingConfig: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public int[] getPendingCustomEffectList() {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return null;
        }
        try {
            return iTranLightingManager.getPendingCustomEffectList();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getAllCustomEffects: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public com.transsion.hubsdk.api.lighting.TranSceneConfig getSceneConfig(int i) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return null;
        }
        try {
            return convertScene(iTranLightingManager.getSceneConfig(i));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getSceneConfig: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public boolean lockLightingDisplay(int i) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return false;
        }
        try {
            return iTranLightingManager.lockLightingDisplay(i, mToken);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getCustomEffectById: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public void previewEffectWithScene(int i, int i2, int i3, int i4, Bundle bundle) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.previewEffectWithScene(i, i2, i3, i4, bundle);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "startEffect: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void previewOff() {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.previewOff();
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "startEffect: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void previewOffWithScene(int i, Bundle bundle) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.previewOffWithScene(i, bundle);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "startEffect: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void registerConfigChangeListener(LightingConfigChangeListener lightingConfigChangeListener) {
        if (lightingConfigChangeListener == null) {
            TranSdkLog.w(TAG, "registerConfigChangeListener: listener is null");
            return;
        }
        if (this.mService == null) {
            TranSdkLog.w(TAG, "registerConfigChangeListener: service is null");
            return;
        }
        ITranLightingConfigChangeListener configChangeListenerStub = new ConfigChangeListenerStub(lightingConfigChangeListener);
        synchronized (this) {
            try {
                if (this.mListenerMap.containsKey(lightingConfigChangeListener)) {
                    TranSdkLog.w(TAG, "registerConfigChangeListener: listener already registered");
                    return;
                }
                this.mListenerMap.put(lightingConfigChangeListener, configChangeListenerStub);
                try {
                    this.mService.registerConfigChangeListener(configChangeListenerStub);
                    TranSdkLog.d(TAG, "registerConfigChangeListener: success");
                } catch (RemoteException e) {
                    TranSdkLog.e(TAG, "registerConfigChangeListener: " + e);
                    synchronized (this) {
                        this.mListenerMap.remove(lightingConfigChangeListener);
                        throw e.rethrowFromSystemServer();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void setEffectConfig(int i, int i2, TranEffectConfig tranEffectConfig) {
        if (this.mService != null) {
            try {
                com.transsion.hubsdk.lighting.TranEffectConfig tranEffectConfigConvertToCommonEffect = convertToCommonEffect(tranEffectConfig);
                if (tranEffectConfigConvertToCommonEffect == null) {
                    TranSdkLog.w(TAG, "setEffectConfig: config is null");
                } else {
                    this.mService.setEffectConfig(i, i2, tranEffectConfigConvertToCommonEffect);
                }
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setEffectConfig: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void setLedMusicPlay(boolean z) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.setLedMusicPlay(z);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setLedMusicPlay: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void setLightingConfig(com.transsion.hubsdk.api.lighting.TranLightingConfig tranLightingConfig) {
        if (this.mService != null) {
            try {
                TranLightingConfig tranLightingConfigConvertToCommonLighting = convertToCommonLighting(tranLightingConfig);
                if (tranLightingConfigConvertToCommonLighting == null) {
                    TranSdkLog.w(TAG, "setConfig: config is null");
                } else {
                    this.mService.setLightingConfig(tranLightingConfigConvertToCommonLighting);
                }
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setConfig: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void setSceneConfig(int i, com.transsion.hubsdk.api.lighting.TranSceneConfig tranSceneConfig) {
        if (this.mService != null) {
            try {
                TranSceneConfig tranSceneConfigConvertToCommonScene = convertToCommonScene(tranSceneConfig);
                if (tranSceneConfigConvertToCommonScene == null) {
                    TranSdkLog.w(TAG, "setSceneConfig: config is null");
                } else {
                    this.mService.setSceneConfig(i, tranSceneConfigConvertToCommonScene);
                }
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setEffectConfig: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void setSceneParam(int i, Bundle bundle) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.setSceneParam(i, bundle);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setSceneParam: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void startScene(int i, int i2, int i3, int i4, Bundle bundle) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.startScene(i, i2, i3, i4, bundle, mToken);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "startEffect: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void stopScene(int i) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.stopScene(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "stopEffect: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void triggerScene(int i, int i2, int i3, int i4, Bundle bundle) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.triggerScene(i, i2, i3, i4, bundle);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setSceneParam: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void unlockEffect() {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.unlockEffect();
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "unlockEffect: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void unlockLightingDisplay(int i) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager != null) {
            try {
                iTranLightingManager.unlockLightingDisplay(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "getCustomEffectById: " + e);
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @Override
    public void unregisterConfigChangeListener(LightingConfigChangeListener lightingConfigChangeListener) {
        ITranLightingConfigChangeListener iTranLightingConfigChangeListenerRemove;
        if (lightingConfigChangeListener == null) {
            TranSdkLog.w(TAG, "unregisterConfigChangeListener: listener is null");
            return;
        }
        if (this.mService == null) {
            TranSdkLog.w(TAG, "unregisterConfigChangeListener: service is null");
            return;
        }
        synchronized (this) {
            iTranLightingConfigChangeListenerRemove = this.mListenerMap.remove(lightingConfigChangeListener);
        }
        if (iTranLightingConfigChangeListenerRemove == null) {
            TranSdkLog.w(TAG, "unregisterConfigChangeListener: listener not found");
            return;
        }
        try {
            this.mService.unregisterConfigChangeListener(iTranLightingConfigChangeListenerRemove);
            TranSdkLog.d(TAG, "unregisterConfigChangeListener: success");
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "unregisterConfigChangeListener: " + e);
            throw e.rethrowFromSystemServer();
        }
    }

    @Override
    public boolean addEffect(int i, int i2, int i3, String str) {
        ITranLightingManager iTranLightingManager = this.mService;
        if (iTranLightingManager == null) {
            return false;
        }
        try {
            return iTranLightingManager.addEffect2(i, i2, i3, str);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "addEffect2: " + e);
            throw e.rethrowFromSystemServer();
        }
    }
}
