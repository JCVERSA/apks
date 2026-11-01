package com.google.firebase.messaging;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.privacysandbox.ads.adservices.adid.AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda6;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.datatransport.TransportFactory;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class FirebaseMessaging {
    private static final long MIN_DELAY_SEC = 30;
    private static Store store;
    static ScheduledExecutorService syncExecutor;
    private final AutoInit autoInit;
    private final Context context;
    private final Executor fileExecutor;
    private final FirebaseApp firebaseApp;
    private final GmsRpc gmsRpc;
    private final FirebaseInstanceIdInternal iid;
    private final Executor initExecutor;
    private final Application.ActivityLifecycleCallbacks lifecycleCallbacks;
    private final Metadata metadata;
    private final RequestDeduplicator requestDeduplicator;
    private boolean syncScheduledOrRunning;
    private final Task<TopicsSubscriber> topicsSubscriberTask;
    static final String GMS_PACKAGE = ProtectedFastSSH.s("鞛");
    private static final String EXTRA_DUMMY_P_INTENT = ProtectedFastSSH.s("鞜");
    private static final String SUBTYPE_DEFAULT = "";
    static final String TAG = ProtectedFastSSH.s("鞝");

    @Deprecated
    public static final String INSTANCE_ID_SCOPE = ProtectedFastSSH.s("鞞");
    private static final String SEND_INTENT_ACTION = ProtectedFastSSH.s("鞟");
    private static final long MAX_DELAY_SEC = TimeUnit.HOURS.toSeconds(8);
    static Provider<TransportFactory> transportFactory = new FirebaseMessaging$$ExternalSyntheticLambda8();

    class AutoInit {
        private Boolean autoInitEnabled;
        private EventHandler<DataCollectionDefaultChange> dataCollectionDefaultChangeEventHandler;
        private boolean initialized;
        private final Subscriber subscriber;
        private static final String MANIFEST_METADATA_AUTO_INIT_ENABLED = ProtectedFastSSH.s("鞘");
        private static final String FCM_PREFERENCES = ProtectedFastSSH.s("鞙");
        private static final String AUTO_INIT_PREF = ProtectedFastSSH.s("鞚");

        AutoInit(Subscriber subscriber) {
            this.subscriber = subscriber;
        }

        private Boolean readEnabled() {
            ApplicationInfo applicationInfo;
            String strS = ProtectedFastSSH.s("鞘");
            Context applicationContext = FirebaseMessaging.access$000(FirebaseMessaging.this).getApplicationContext();
            SharedPreferences sharedPreferences = applicationContext.getSharedPreferences(ProtectedFastSSH.s("鞙"), 0);
            String strS2 = ProtectedFastSSH.s("鞚");
            if (sharedPreferences.contains(strS2)) {
                return Boolean.valueOf(sharedPreferences.getBoolean(strS2, false));
            }
            try {
                PackageManager packageManager = applicationContext.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey(strS)) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean(strS));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        synchronized void initialize() {
            if (this.initialized) {
                return;
            }
            Boolean enabled = readEnabled();
            this.autoInitEnabled = enabled;
            if (enabled == null) {
                FirebaseMessaging$AutoInit$$ExternalSyntheticLambda0 firebaseMessaging$AutoInit$$ExternalSyntheticLambda0 = new FirebaseMessaging$AutoInit$$ExternalSyntheticLambda0(this);
                this.dataCollectionDefaultChangeEventHandler = firebaseMessaging$AutoInit$$ExternalSyntheticLambda0;
                this.subscriber.subscribe(DataCollectionDefaultChange.class, firebaseMessaging$AutoInit$$ExternalSyntheticLambda0);
            }
            this.initialized = true;
        }

        synchronized boolean isEnabled() {
            Boolean bool;
            initialize();
            bool = this.autoInitEnabled;
            return bool != null ? bool.booleanValue() : FirebaseMessaging.access$000(FirebaseMessaging.this).isDataCollectionDefaultEnabled();
        }

        void m754x1061f0b8(Event event) {
            if (isEnabled()) {
                FirebaseMessaging.access$100(FirebaseMessaging.this);
            }
        }

        synchronized void setEnabled(boolean z) {
            initialize();
            EventHandler<DataCollectionDefaultChange> eventHandler = this.dataCollectionDefaultChangeEventHandler;
            if (eventHandler != null) {
                this.subscriber.unsubscribe(DataCollectionDefaultChange.class, eventHandler);
                this.dataCollectionDefaultChangeEventHandler = null;
            }
            SharedPreferences.Editor editorEdit = FirebaseMessaging.access$000(FirebaseMessaging.this).getApplicationContext().getSharedPreferences(ProtectedFastSSH.s("鞙"), 0).edit();
            editorEdit.putBoolean(ProtectedFastSSH.s("鞚"), z);
            editorEdit.apply();
            if (z) {
                FirebaseMessaging.access$100(FirebaseMessaging.this);
            }
            this.autoInitEnabled = Boolean.valueOf(z);
        }
    }

    FirebaseMessaging(FirebaseApp firebaseApp, FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider<TransportFactory> provider, Subscriber subscriber, Metadata metadata, GmsRpc gmsRpc, Executor executor, Executor executor2, Executor executor3) {
        this.syncScheduledOrRunning = false;
        transportFactory = provider;
        this.firebaseApp = firebaseApp;
        this.iid = firebaseInstanceIdInternal;
        this.autoInit = new AutoInit(subscriber);
        Context applicationContext = firebaseApp.getApplicationContext();
        this.context = applicationContext;
        FcmLifecycleCallbacks fcmLifecycleCallbacks = new FcmLifecycleCallbacks();
        this.lifecycleCallbacks = fcmLifecycleCallbacks;
        this.metadata = metadata;
        this.gmsRpc = gmsRpc;
        this.requestDeduplicator = new RequestDeduplicator(executor);
        this.initExecutor = executor2;
        this.fileExecutor = executor3;
        Context applicationContext2 = firebaseApp.getApplicationContext();
        if (applicationContext2 instanceof Application) {
            ((Application) applicationContext2).registerActivityLifecycleCallbacks(fcmLifecycleCallbacks);
        } else {
            String str = ProtectedFastSSH.s("鞠") + applicationContext2 + ProtectedFastSSH.s("鞡");
            ProtectedFastSSH.s("鞝");
        }
        if (firebaseInstanceIdInternal != null) {
            firebaseInstanceIdInternal.addNewTokenListener(new FirebaseMessaging$$ExternalSyntheticLambda3(this));
        }
        executor2.execute(new FirebaseMessaging$$ExternalSyntheticLambda4(this));
        Task<TopicsSubscriber> taskCreateInstance = TopicsSubscriber.createInstance(this, metadata, gmsRpc, applicationContext, FcmExecutors.newTopicsSyncExecutor());
        this.topicsSubscriberTask = taskCreateInstance;
        taskCreateInstance.addOnSuccessListener(executor2, new FirebaseMessaging$$ExternalSyntheticLambda5(this));
        executor2.execute(new FirebaseMessaging$$ExternalSyntheticLambda6(this));
    }

    FirebaseMessaging(FirebaseApp firebaseApp, FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi, Provider<TransportFactory> provider3, Subscriber subscriber) {
        this(firebaseApp, firebaseInstanceIdInternal, provider, provider2, firebaseInstallationsApi, provider3, subscriber, new Metadata(firebaseApp.getApplicationContext()));
    }

    FirebaseMessaging(FirebaseApp firebaseApp, FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi, Provider<TransportFactory> provider3, Subscriber subscriber, Metadata metadata) {
        this(firebaseApp, firebaseInstanceIdInternal, provider3, subscriber, metadata, new GmsRpc(firebaseApp, metadata, provider, provider2, firebaseInstallationsApi), FcmExecutors.newTaskExecutor(), FcmExecutors.newInitExecutor(), FcmExecutors.newFileIOExecutor());
    }

    static FirebaseApp access$000(FirebaseMessaging firebaseMessaging) {
        return firebaseMessaging.firebaseApp;
    }

    static void access$100(FirebaseMessaging firebaseMessaging) {
        firebaseMessaging.startSyncIfNecessary();
    }

    static synchronized void clearStoreForTest() {
        store = null;
    }

    static void clearTransportFactoryForTest() {
        transportFactory = new FirebaseMessaging$$ExternalSyntheticLambda7();
    }

    public static synchronized FirebaseMessaging getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    static synchronized FirebaseMessaging getInstance(FirebaseApp firebaseApp) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) firebaseApp.get(FirebaseMessaging.class);
        Preconditions.checkNotNull(firebaseMessaging, ProtectedFastSSH.s("鞢"));
        return firebaseMessaging;
    }

    private static synchronized Store getStore(Context context) {
        if (store == null) {
            store = new Store(context);
        }
        return store;
    }

    private String getSubtype() {
        return ProtectedFastSSH.s("鞣").equals(this.firebaseApp.getName()) ? "" : this.firebaseApp.getPersistenceKey();
    }

    public static TransportFactory getTransportFactory() {
        return transportFactory.get();
    }

    private void handleProxiedNotificationData() {
        this.gmsRpc.getProxyNotificationData().addOnSuccessListener(this.initExecutor, new FirebaseMessaging$$ExternalSyntheticLambda12(this));
    }

    private void initializeProxyNotifications() {
        ProxyNotificationInitializer.initialize(this.context);
        ProxyNotificationPreferences.setProxyRetention(this.context, this.gmsRpc, shouldRetainProxyNotifications());
        if (shouldRetainProxyNotifications()) {
            handleProxiedNotificationData();
        }
    }

    private void invokeOnTokenRefresh(String str) {
        if (ProtectedFastSSH.s("鞣").equals(this.firebaseApp.getName())) {
            if (Log.isLoggable(ProtectedFastSSH.s("鞝"), 3)) {
                String str2 = ProtectedFastSSH.s("鞤") + this.firebaseApp.getName();
            }
            Intent intent = new Intent(ProtectedFastSSH.s("鞥"));
            intent.putExtra(ProtectedFastSSH.s("鞦"), str);
            new FcmBroadcastProcessor(this.context).process(intent);
        }
    }

    static TransportFactory lambda$clearTransportFactoryForTest$12() {
        return null;
    }

    static TransportFactory lambda$static$0() {
        return null;
    }

    static Task lambda$subscribeToTopic$10(String str, TopicsSubscriber topicsSubscriber) throws Exception {
        return topicsSubscriber.subscribeToTopic(str);
    }

    static Task lambda$unsubscribeFromTopic$11(String str, TopicsSubscriber topicsSubscriber) throws Exception {
        return topicsSubscriber.unsubscribeFromTopic(str);
    }

    private boolean shouldRetainProxyNotifications() {
        ProxyNotificationInitializer.initialize(this.context);
        if (!ProxyNotificationInitializer.isProxyNotificationEnabled(this.context)) {
            return false;
        }
        if (this.firebaseApp.get(AnalyticsConnector.class) != null) {
            return true;
        }
        return MessagingAnalytics.deliveryMetricsExportToBigQueryEnabled() && transportFactory != null;
    }

    private synchronized void startSync() {
        if (!this.syncScheduledOrRunning) {
            syncWithDelaySecondsInternal(0L);
        }
    }

    private void startSyncIfNecessary() {
        FirebaseInstanceIdInternal firebaseInstanceIdInternal = this.iid;
        if (firebaseInstanceIdInternal != null) {
            firebaseInstanceIdInternal.getToken();
        } else if (tokenNeedsRefresh(getTokenWithoutTriggeringSync())) {
            startSync();
        }
    }

    String blockingGetToken() throws IOException {
        FirebaseInstanceIdInternal firebaseInstanceIdInternal = this.iid;
        if (firebaseInstanceIdInternal != null) {
            try {
                return (String) Tasks.await(firebaseInstanceIdInternal.getTokenTask());
            } catch (InterruptedException | ExecutionException e) {
                throw new IOException(e);
            }
        }
        Store.Token tokenWithoutTriggeringSync = getTokenWithoutTriggeringSync();
        if (!tokenNeedsRefresh(tokenWithoutTriggeringSync)) {
            return tokenWithoutTriggeringSync.token;
        }
        String defaultSenderId = Metadata.getDefaultSenderId(this.firebaseApp);
        try {
            return (String) Tasks.await(this.requestDeduplicator.getOrStartGetTokenRequest(defaultSenderId, new FirebaseMessaging$$ExternalSyntheticLambda14(this, defaultSenderId, tokenWithoutTriggeringSync)));
        } catch (InterruptedException | ExecutionException e2) {
            throw new IOException(e2);
        }
    }

    public Task<Void> deleteToken() {
        if (this.iid != null) {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.initExecutor.execute(new FirebaseMessaging$$ExternalSyntheticLambda1(this, taskCompletionSource));
            return taskCompletionSource.getTask();
        }
        if (getTokenWithoutTriggeringSync() == null) {
            return Tasks.forResult(null);
        }
        TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
        FcmExecutors.newNetworkIOExecutor().execute(new FirebaseMessaging$$ExternalSyntheticLambda2(this, taskCompletionSource2));
        return taskCompletionSource2.getTask();
    }

    public boolean deliveryMetricsExportToBigQueryEnabled() {
        return MessagingAnalytics.deliveryMetricsExportToBigQueryEnabled();
    }

    void enqueueTaskWithDelaySeconds(Runnable runnable, long j) {
        synchronized (FirebaseMessaging.class) {
            if (syncExecutor == null) {
                syncExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory(ProtectedFastSSH.s("鞧")));
            }
            syncExecutor.schedule(runnable, j, TimeUnit.SECONDS);
        }
    }

    Context getApplicationContext() {
        return this.context;
    }

    public Task<String> getToken() {
        FirebaseInstanceIdInternal firebaseInstanceIdInternal = this.iid;
        if (firebaseInstanceIdInternal != null) {
            return firebaseInstanceIdInternal.getTokenTask();
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.initExecutor.execute(new FirebaseMessaging$$ExternalSyntheticLambda11(this, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    Store.Token getTokenWithoutTriggeringSync() {
        return getStore(this.context).getToken(getSubtype(), Metadata.getDefaultSenderId(this.firebaseApp));
    }

    Task<TopicsSubscriber> getTopicsSubscriberTask() {
        return this.topicsSubscriberTask;
    }

    public boolean isAutoInitEnabled() {
        return this.autoInit.isEnabled();
    }

    boolean isGmsCorePresent() {
        return this.metadata.isGmscorePresent();
    }

    public boolean isNotificationDelegationEnabled() {
        return ProxyNotificationInitializer.isProxyNotificationEnabled(this.context);
    }

    Task m743xb84917c3(String str, Store.Token token, String str2) throws Exception {
        getStore(this.context).saveToken(getSubtype(), str, str2, this.metadata.getAppVersionCode());
        if (token == null || !str2.equals(token.token)) {
            invokeOnTokenRefresh(str2);
        }
        return Tasks.forResult(str2);
    }

    Task m744xb7d2b1c4(String str, Store.Token token) {
        return this.gmsRpc.getToken().onSuccessTask(this.fileExecutor, new FirebaseMessaging$$ExternalSyntheticLambda9(this, str, token));
    }

    void m745xd5738b77(TaskCompletionSource taskCompletionSource) {
        try {
            this.iid.deleteToken(Metadata.getDefaultSenderId(this.firebaseApp), ProtectedFastSSH.s("鞞"));
            taskCompletionSource.setResult(null);
        } catch (Exception e) {
            taskCompletionSource.setException(e);
        }
    }

    void m746xd4fd2578(TaskCompletionSource taskCompletionSource) {
        try {
            Tasks.await(this.gmsRpc.deleteToken());
            getStore(this.context).deleteToken(getSubtype(), Metadata.getDefaultSenderId(this.firebaseApp));
            taskCompletionSource.setResult(null);
        } catch (Exception e) {
            taskCompletionSource.setException(e);
        }
    }

    void m747x6a533e85(TaskCompletionSource taskCompletionSource) {
        try {
            taskCompletionSource.setResult(blockingGetToken());
        } catch (Exception e) {
            taskCompletionSource.setException(e);
        }
    }

    void m748x8ede5a30(CloudMessage cloudMessage) {
        if (cloudMessage != null) {
            MessagingAnalytics.logNotificationReceived(cloudMessage.getIntent());
            handleProxiedNotificationData();
        }
    }

    void m749lambda$new$1$comgooglefirebasemessagingFirebaseMessaging(String str) {
        invokeOnTokenRefresh(str);
    }

    void m750lambda$new$2$comgooglefirebasemessagingFirebaseMessaging() {
        if (isAutoInitEnabled()) {
            startSyncIfNecessary();
        }
    }

    void m751lambda$new$3$comgooglefirebasemessagingFirebaseMessaging(TopicsSubscriber topicsSubscriber) {
        if (isAutoInitEnabled()) {
            topicsSubscriber.startTopicsSyncIfNecessary();
        }
    }

    void m752lambda$new$4$comgooglefirebasemessagingFirebaseMessaging() {
        initializeProxyNotifications();
    }

    void m753x6495830d(Void r3) {
        ProxyNotificationPreferences.setProxyRetention(this.context, this.gmsRpc, shouldRetainProxyNotifications());
    }

    @Deprecated
    public void send(RemoteMessage remoteMessage) {
        if (TextUtils.isEmpty(remoteMessage.getTo())) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("鞪"));
        }
        Intent intent = new Intent(ProtectedFastSSH.s("鞟"));
        Intent intent2 = new Intent();
        intent2.setPackage(ProtectedFastSSH.s("鞨"));
        intent.putExtra(ProtectedFastSSH.s("鞜"), PendingIntent.getBroadcast(this.context, 0, intent2, AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL));
        intent.setPackage(ProtectedFastSSH.s("鞛"));
        remoteMessage.populateSendMessageIntent(intent);
        this.context.sendOrderedBroadcast(intent, ProtectedFastSSH.s("鞩"));
    }

    public void setAutoInitEnabled(boolean z) {
        this.autoInit.setEnabled(z);
    }

    public void setDeliveryMetricsExportToBigQuery(boolean z) {
        MessagingAnalytics.setDeliveryMetricsExportToBigQuery(z);
        ProxyNotificationPreferences.setProxyRetention(this.context, this.gmsRpc, shouldRetainProxyNotifications());
    }

    public Task<Void> setNotificationDelegationEnabled(boolean z) {
        return ProxyNotificationInitializer.setEnableProxyNotification(this.initExecutor, this.context, z).addOnSuccessListener(new AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda6(), new FirebaseMessaging$$ExternalSyntheticLambda10(this));
    }

    synchronized void setSyncScheduledOrRunning(boolean z) {
        this.syncScheduledOrRunning = z;
    }

    public Task<Void> subscribeToTopic(String str) {
        return this.topicsSubscriberTask.onSuccessTask(new FirebaseMessaging$$ExternalSyntheticLambda0(str));
    }

    synchronized void syncWithDelaySecondsInternal(long j) {
        enqueueTaskWithDelaySeconds(new SyncTask(this, Math.min(Math.max(30L, 2 * j), MAX_DELAY_SEC)), j);
        this.syncScheduledOrRunning = true;
    }

    boolean tokenNeedsRefresh(Store.Token token) {
        return token == null || token.needsRefresh(this.metadata.getAppVersionCode());
    }

    public Task<Void> unsubscribeFromTopic(String str) {
        return this.topicsSubscriberTask.onSuccessTask(new FirebaseMessaging$$ExternalSyntheticLambda13(str));
    }
}
