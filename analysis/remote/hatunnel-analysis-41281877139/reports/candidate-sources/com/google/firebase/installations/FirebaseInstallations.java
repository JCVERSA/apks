package com.google.firebase.installations;

import android.text.TextUtils;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Lazy;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.internal.FidListener;
import com.google.firebase.installations.internal.FidListenerHandle;
import com.google.firebase.installations.local.IidStore;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class FirebaseInstallations implements FirebaseInstallationsApi {
    private static final int CORE_POOL_SIZE = 0;
    private static final long KEEP_ALIVE_TIME_IN_SECONDS = 30;
    private static final int MAXIMUM_POOL_SIZE = 1;
    private final ExecutorService backgroundExecutor;
    private String cachedFid;
    private final RandomFidGenerator fidGenerator;
    private Set<FidListener> fidListeners;
    private final FirebaseApp firebaseApp;
    private final Lazy<IidStore> iidStore;
    private final List<StateListener> listeners;
    private final Object lock;
    private final Executor networkExecutor;
    private final PersistedInstallation persistedInstallation;
    private final FirebaseInstallationServiceClient serviceClient;
    private final Utils utils;
    private static final String APP_ID_VALIDATION_MSG = ProtectedFastSSH.s("阍");
    private static final String LOCKFILE_NAME_GENERATE_FID = ProtectedFastSSH.s("阎");
    private static final String API_KEY_VALIDATION_MSG = ProtectedFastSSH.s("阏");
    private static final String CHIME_FIREBASE_APP_NAME = ProtectedFastSSH.s("阐");
    private static final String AUTH_ERROR_MSG = ProtectedFastSSH.s("阑");
    private static final String PROJECT_ID_VALIDATION_MSG = ProtectedFastSSH.s("阒");
    private static final Object lockGenerateFid = new Object();
    private static final ThreadFactory THREAD_FACTORY = new AnonymousClass1();

    class AnonymousClass1 implements ThreadFactory {
        private final AtomicInteger mCount = new AtomicInteger(1);

        AnonymousClass1() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format(ProtectedFastSSH.s("阌"), Integer.valueOf(this.mCount.getAndIncrement())));
        }
    }

    class AnonymousClass2 implements FidListenerHandle {
        final FidListener val$listener;

        AnonymousClass2(FidListener fidListener) {
            this.val$listener = fidListener;
        }

        @Override
        public void unregister() {
            synchronized (FirebaseInstallations.this) {
                FirebaseInstallations.access$000(FirebaseInstallations.this).remove(this.val$listener);
            }
        }
    }

    static class AnonymousClass3 {
        static final int[] $SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode;
        static final int[] $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode;

        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            $SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static Void $r8$lambda$O57UbArKVPOdjMtZBKxMAtl9KAA(FirebaseInstallations firebaseInstallations) {
        return firebaseInstallations.deleteFirebaseInstallationId();
    }

    FirebaseInstallations(FirebaseApp firebaseApp, Provider<HeartBeatController> provider, ExecutorService executorService, Executor executor) {
        this(executorService, executor, firebaseApp, new FirebaseInstallationServiceClient(firebaseApp.getApplicationContext(), provider), new PersistedInstallation(firebaseApp), Utils.getInstance(), new Lazy((Provider) new FirebaseInstallations$$ExternalSyntheticLambda0(firebaseApp)), new RandomFidGenerator());
    }

    FirebaseInstallations(ExecutorService executorService, Executor executor, FirebaseApp firebaseApp, FirebaseInstallationServiceClient firebaseInstallationServiceClient, PersistedInstallation persistedInstallation, Utils utils, Lazy<IidStore> lazy, RandomFidGenerator randomFidGenerator) {
        this.lock = new Object();
        this.fidListeners = new HashSet();
        this.listeners = new ArrayList();
        this.firebaseApp = firebaseApp;
        this.serviceClient = firebaseInstallationServiceClient;
        this.persistedInstallation = persistedInstallation;
        this.utils = utils;
        this.iidStore = lazy;
        this.fidGenerator = randomFidGenerator;
        this.backgroundExecutor = executorService;
        this.networkExecutor = executor;
    }

    static Set access$000(FirebaseInstallations firebaseInstallations) {
        return firebaseInstallations.fidListeners;
    }

    private Task<InstallationTokenResult> addGetAuthTokenListener() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        addStateListeners(new GetAuthTokenListener(this.utils, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private Task<String> addGetIdListener() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        addStateListeners(new GetIdListener(taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private void addStateListeners(StateListener stateListener) {
        synchronized (this.lock) {
            this.listeners.add(stateListener);
        }
    }

    private Void deleteFirebaseInstallationId() throws FirebaseInstallationsException {
        updateCacheFid(null);
        PersistedInstallationEntry multiProcessSafePrefs = getMultiProcessSafePrefs();
        if (multiProcessSafePrefs.isRegistered()) {
            this.serviceClient.deleteFirebaseInstallation(getApiKey(), multiProcessSafePrefs.getFirebaseInstallationId(), getProjectIdentifier(), multiProcessSafePrefs.getRefreshToken());
        }
        insertOrUpdatePrefs(multiProcessSafePrefs.withNoGeneratedFid());
        return null;
    }

    private void doNetworkCallIfNecessary(boolean z) {
        PersistedInstallationEntry persistedInstallationEntryRegisterFidWithServer;
        PersistedInstallationEntry multiProcessSafePrefs = getMultiProcessSafePrefs();
        try {
            if (multiProcessSafePrefs.isErrored() || multiProcessSafePrefs.isUnregistered()) {
                persistedInstallationEntryRegisterFidWithServer = registerFidWithServer(multiProcessSafePrefs);
            } else {
                if (!z && !this.utils.isAuthTokenExpired(multiProcessSafePrefs)) {
                    return;
                }
                persistedInstallationEntryRegisterFidWithServer = fetchAuthTokenFromServer(multiProcessSafePrefs);
            }
            insertOrUpdatePrefs(persistedInstallationEntryRegisterFidWithServer);
            updateFidListener(multiProcessSafePrefs, persistedInstallationEntryRegisterFidWithServer);
            if (persistedInstallationEntryRegisterFidWithServer.isRegistered()) {
                updateCacheFid(persistedInstallationEntryRegisterFidWithServer.getFirebaseInstallationId());
            }
            if (persistedInstallationEntryRegisterFidWithServer.isErrored()) {
                triggerOnException(new FirebaseInstallationsException(FirebaseInstallationsException.Status.BAD_CONFIG));
            } else if (persistedInstallationEntryRegisterFidWithServer.isNotGenerated()) {
                triggerOnException(new IOException(ProtectedFastSSH.s("阑")));
            } else {
                triggerOnStateReached(persistedInstallationEntryRegisterFidWithServer);
            }
        } catch (FirebaseInstallationsException e) {
            triggerOnException(e);
        }
    }

    private final void doRegistrationOrRefresh(boolean z) {
        PersistedInstallationEntry prefsWithGeneratedIdMultiProcessSafe = getPrefsWithGeneratedIdMultiProcessSafe();
        if (z) {
            prefsWithGeneratedIdMultiProcessSafe = prefsWithGeneratedIdMultiProcessSafe.withClearedAuthToken();
        }
        triggerOnStateReached(prefsWithGeneratedIdMultiProcessSafe);
        this.networkExecutor.execute(new FirebaseInstallations$$ExternalSyntheticLambda1(this, z));
    }

    private PersistedInstallationEntry fetchAuthTokenFromServer(PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {
        TokenResult tokenResultGenerateAuthToken = this.serviceClient.generateAuthToken(getApiKey(), persistedInstallationEntry.getFirebaseInstallationId(), getProjectIdentifier(), persistedInstallationEntry.getRefreshToken());
        int i = AnonymousClass3.$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode[tokenResultGenerateAuthToken.getResponseCode().ordinal()];
        if (i == 1) {
            return persistedInstallationEntry.withAuthToken(tokenResultGenerateAuthToken.getToken(), tokenResultGenerateAuthToken.getTokenExpirationTimestamp(), this.utils.currentTimeInSecs());
        }
        if (i == 2) {
            return persistedInstallationEntry.withFisError(ProtectedFastSSH.s("阔"));
        }
        if (i != 3) {
            throw new FirebaseInstallationsException(ProtectedFastSSH.s("阓"), FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        updateCacheFid(null);
        return persistedInstallationEntry.withNoGeneratedFid();
    }

    private synchronized String getCacheFid() {
        return this.cachedFid;
    }

    private IidStore getIidStore() {
        return this.iidStore.get();
    }

    public static FirebaseInstallations getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    public static FirebaseInstallations getInstance(FirebaseApp firebaseApp) {
        Preconditions.checkArgument(firebaseApp != null, ProtectedFastSSH.s("阕"));
        return (FirebaseInstallations) firebaseApp.get(FirebaseInstallationsApi.class);
    }

    private PersistedInstallationEntry getMultiProcessSafePrefs() {
        PersistedInstallationEntry persistedInstallationEntryValue;
        synchronized (lockGenerateFid) {
            CrossProcessLock crossProcessLockAcquire = CrossProcessLock.acquire(this.firebaseApp.getApplicationContext(), ProtectedFastSSH.s("阎"));
            try {
                persistedInstallationEntryValue = this.persistedInstallation.readPersistedInstallationEntryValue();
                if (crossProcessLockAcquire != null) {
                    crossProcessLockAcquire.releaseAndClose();
                }
            } catch (Throwable th) {
                if (crossProcessLockAcquire != null) {
                    crossProcessLockAcquire.releaseAndClose();
                }
                throw th;
            }
        }
        return persistedInstallationEntryValue;
    }

    private PersistedInstallationEntry getPrefsWithGeneratedIdMultiProcessSafe() {
        PersistedInstallationEntry persistedInstallationEntryValue;
        synchronized (lockGenerateFid) {
            CrossProcessLock crossProcessLockAcquire = CrossProcessLock.acquire(this.firebaseApp.getApplicationContext(), ProtectedFastSSH.s("阎"));
            try {
                persistedInstallationEntryValue = this.persistedInstallation.readPersistedInstallationEntryValue();
                if (persistedInstallationEntryValue.isNotGenerated()) {
                    persistedInstallationEntryValue = this.persistedInstallation.insertOrUpdatePersistedInstallationEntry(persistedInstallationEntryValue.withUnregisteredFid(readExistingIidOrCreateFid(persistedInstallationEntryValue)));
                }
                if (crossProcessLockAcquire != null) {
                    crossProcessLockAcquire.releaseAndClose();
                }
            } catch (Throwable th) {
                if (crossProcessLockAcquire != null) {
                    crossProcessLockAcquire.releaseAndClose();
                }
                throw th;
            }
        }
        return persistedInstallationEntryValue;
    }

    private void insertOrUpdatePrefs(PersistedInstallationEntry persistedInstallationEntry) {
        synchronized (lockGenerateFid) {
            CrossProcessLock crossProcessLockAcquire = CrossProcessLock.acquire(this.firebaseApp.getApplicationContext(), ProtectedFastSSH.s("阎"));
            try {
                this.persistedInstallation.insertOrUpdatePersistedInstallationEntry(persistedInstallationEntry);
                if (crossProcessLockAcquire != null) {
                    crossProcessLockAcquire.releaseAndClose();
                }
            } catch (Throwable th) {
                if (crossProcessLockAcquire != null) {
                    crossProcessLockAcquire.releaseAndClose();
                }
                throw th;
            }
        }
    }

    static IidStore lambda$new$0(FirebaseApp firebaseApp) {
        return new IidStore(firebaseApp);
    }

    private void preConditionChecks() {
        String applicationId = getApplicationId();
        String strS = ProtectedFastSSH.s("阍");
        Preconditions.checkNotEmpty(applicationId, strS);
        Preconditions.checkNotEmpty(getProjectIdentifier(), ProtectedFastSSH.s("阒"));
        String apiKey = getApiKey();
        String strS2 = ProtectedFastSSH.s("阏");
        Preconditions.checkNotEmpty(apiKey, strS2);
        Preconditions.checkArgument(Utils.isValidAppIdFormat(getApplicationId()), strS);
        Preconditions.checkArgument(Utils.isValidApiKeyFormat(getApiKey()), strS2);
    }

    private String readExistingIidOrCreateFid(PersistedInstallationEntry persistedInstallationEntry) {
        if ((!this.firebaseApp.getName().equals(ProtectedFastSSH.s("阐")) && !this.firebaseApp.isDefaultApp()) || !persistedInstallationEntry.shouldAttemptMigration()) {
            return this.fidGenerator.createRandomFid();
        }
        String iid = getIidStore().readIid();
        return TextUtils.isEmpty(iid) ? this.fidGenerator.createRandomFid() : iid;
    }

    private PersistedInstallationEntry registerFidWithServer(PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {
        InstallationResponse installationResponseCreateFirebaseInstallation = this.serviceClient.createFirebaseInstallation(getApiKey(), persistedInstallationEntry.getFirebaseInstallationId(), getProjectIdentifier(), getApplicationId(), (persistedInstallationEntry.getFirebaseInstallationId() == null || persistedInstallationEntry.getFirebaseInstallationId().length() != 11) ? null : getIidStore().readToken());
        int i = AnonymousClass3.$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode[installationResponseCreateFirebaseInstallation.getResponseCode().ordinal()];
        if (i == 1) {
            return persistedInstallationEntry.withRegisteredFid(installationResponseCreateFirebaseInstallation.getFid(), installationResponseCreateFirebaseInstallation.getRefreshToken(), this.utils.currentTimeInSecs(), installationResponseCreateFirebaseInstallation.getAuthToken().getToken(), installationResponseCreateFirebaseInstallation.getAuthToken().getTokenExpirationTimestamp());
        }
        if (i == 2) {
            return persistedInstallationEntry.withFisError(ProtectedFastSSH.s("阔"));
        }
        throw new FirebaseInstallationsException(ProtectedFastSSH.s("阓"), FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    private void triggerOnException(Exception exc) {
        synchronized (this.lock) {
            Iterator<StateListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                if (it.next().onException(exc)) {
                    it.remove();
                }
            }
        }
    }

    private void triggerOnStateReached(PersistedInstallationEntry persistedInstallationEntry) {
        synchronized (this.lock) {
            Iterator<StateListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                if (it.next().onStateReached(persistedInstallationEntry)) {
                    it.remove();
                }
            }
        }
    }

    private synchronized void updateCacheFid(String str) {
        this.cachedFid = str;
    }

    private synchronized void updateFidListener(PersistedInstallationEntry persistedInstallationEntry, PersistedInstallationEntry persistedInstallationEntry2) {
        if (this.fidListeners.size() != 0 && !TextUtils.equals(persistedInstallationEntry.getFirebaseInstallationId(), persistedInstallationEntry2.getFirebaseInstallationId())) {
            Iterator<FidListener> it = this.fidListeners.iterator();
            while (it.hasNext()) {
                it.next().onFidChanged(persistedInstallationEntry2.getFirebaseInstallationId());
            }
        }
    }

    @Override
    public Task<Void> delete() {
        return Tasks.call(this.backgroundExecutor, new FirebaseInstallations$$ExternalSyntheticLambda3(this));
    }

    String getApiKey() {
        return this.firebaseApp.getOptions().getApiKey();
    }

    String getApplicationId() {
        return this.firebaseApp.getOptions().getApplicationId();
    }

    @Override
    public Task<String> getId() {
        preConditionChecks();
        String cacheFid = getCacheFid();
        if (cacheFid != null) {
            return Tasks.forResult(cacheFid);
        }
        Task<String> taskAddGetIdListener = addGetIdListener();
        this.backgroundExecutor.execute(new FirebaseInstallations$$ExternalSyntheticLambda2(this));
        return taskAddGetIdListener;
    }

    String getName() {
        return this.firebaseApp.getName();
    }

    String getProjectIdentifier() {
        return this.firebaseApp.getOptions().getProjectId();
    }

    @Override
    public Task<InstallationTokenResult> getToken(boolean z) {
        preConditionChecks();
        Task<InstallationTokenResult> taskAddGetAuthTokenListener = addGetAuthTokenListener();
        this.backgroundExecutor.execute(new FirebaseInstallations$$ExternalSyntheticLambda4(this, z));
        return taskAddGetAuthTokenListener;
    }

    void m737x5a306a82(boolean z) {
        doNetworkCallIfNecessary(z);
    }

    void m738xc18eb11d() {
        doRegistrationOrRefresh(false);
    }

    void m739x7147f7aa(boolean z) {
        doRegistrationOrRefresh(z);
    }

    @Override
    public synchronized FidListenerHandle registerFidListener(FidListener fidListener) {
        this.fidListeners.add(fidListener);
        return new AnonymousClass2(fidListener);
    }
}
