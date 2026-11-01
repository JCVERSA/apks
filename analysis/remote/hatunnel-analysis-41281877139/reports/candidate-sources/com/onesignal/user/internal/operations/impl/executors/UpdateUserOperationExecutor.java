package com.onesignal.user.internal.operations.impl.executors;

import app.fast.ssh.ProtectedFastSSH;
import com.onesignal.common.NetworkUtils;
import com.onesignal.common.consistency.RywData;
import com.onesignal.common.consistency.enums.IamFetchRywTokenKey;
import com.onesignal.common.consistency.models.IConsistencyManager;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.common.modeling.Model;
import com.onesignal.core.internal.config.impl.IdentityVerificationService;
import com.onesignal.core.internal.operations.ExecutionResponse;
import com.onesignal.core.internal.operations.ExecutionResult;
import com.onesignal.core.internal.operations.IOperationExecutor;
import com.onesignal.core.internal.operations.Operation;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.user.internal.backend.IUserBackendService;
import com.onesignal.user.internal.backend.PropertiesDeltasObject;
import com.onesignal.user.internal.backend.PropertiesObject;
import com.onesignal.user.internal.backend.PurchaseObject;
import com.onesignal.user.internal.builduser.IRebuildUserService;
import com.onesignal.user.internal.identity.IdentityModelStore;
import com.onesignal.user.internal.jwt.JwtTokenStore;
import com.onesignal.user.internal.operations.DeleteTagOperation;
import com.onesignal.user.internal.operations.PurchaseInfo;
import com.onesignal.user.internal.operations.SetPropertyOperation;
import com.onesignal.user.internal.operations.SetTagOperation;
import com.onesignal.user.internal.operations.TrackPurchaseOperation;
import com.onesignal.user.internal.operations.TrackSessionEndOperation;
import com.onesignal.user.internal.operations.TrackSessionStartOperation;
import com.onesignal.user.internal.operations.impl.states.NewRecordsState;
import com.onesignal.user.internal.properties.PropertiesModelStore;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\u001c\u0010\u0018\u001a\u00020\u00192\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0014H\u0096@¢\u0006\u0002\u0010\u001bR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, d2 = {"Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;", "Lcom/onesignal/core/internal/operations/IOperationExecutor;", "_userBackend", "Lcom/onesignal/user/internal/backend/IUserBackendService;", "_identityModelStore", "Lcom/onesignal/user/internal/identity/IdentityModelStore;", "_propertiesModelStore", "Lcom/onesignal/user/internal/properties/PropertiesModelStore;", "_buildUserService", "Lcom/onesignal/user/internal/builduser/IRebuildUserService;", "_newRecordState", "Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;", "_consistencyManager", "Lcom/onesignal/common/consistency/models/IConsistencyManager;", "_jwtTokenStore", "Lcom/onesignal/user/internal/jwt/JwtTokenStore;", "_identityVerificationService", "Lcom/onesignal/core/internal/config/impl/IdentityVerificationService;", "(Lcom/onesignal/user/internal/backend/IUserBackendService;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/user/internal/properties/PropertiesModelStore;Lcom/onesignal/user/internal/builduser/IRebuildUserService;Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;Lcom/onesignal/common/consistency/models/IConsistencyManager;Lcom/onesignal/user/internal/jwt/JwtTokenStore;Lcom/onesignal/core/internal/config/impl/IdentityVerificationService;)V", "operations", "", "", "getOperations", "()Ljava/util/List;", "execute", "Lcom/onesignal/core/internal/operations/ExecutionResponse;", "Lcom/onesignal/core/internal/operations/Operation;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "com.onesignal.core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateUserOperationExecutor implements IOperationExecutor {
    private final IRebuildUserService _buildUserService;
    private final IConsistencyManager _consistencyManager;
    private final IdentityModelStore _identityModelStore;
    private final IdentityVerificationService _identityVerificationService;
    private final JwtTokenStore _jwtTokenStore;
    private final NewRecordsState _newRecordState;
    private final PropertiesModelStore _propertiesModelStore;
    private final IUserBackendService _userBackend;
    public static final String TRACK_SESSION_START = ProtectedFastSSH.s("\uaa3b");
    public static final String SET_TAG = ProtectedFastSSH.s("\uaa3c");
    public static final String TRACK_PURCHASE = ProtectedFastSSH.s("\uaa3d");
    public static final String TRACK_SESSION_END = ProtectedFastSSH.s("\uaa3e");
    public static final String SET_PROPERTY = ProtectedFastSSH.s("\uaa3f");
    public static final String DELETE_TAG = ProtectedFastSSH.s("ꩀ");

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkUtils.ResponseStatusType.values().length];
            try {
                iArr[NetworkUtils.ResponseStatusType.RETRYABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkUtils.ResponseStatusType.UNAUTHORIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkUtils.ResponseStatusType.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.operations.impl.executors.UpdateUserOperationExecutor", f = "UpdateUserOperationExecutor.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {149, 160, 162}, m = "execute", n = {"this", "operations", "appId", "onesignalId", "this", "operations", "appId", "onesignalId", "this", "operations", "appId", "onesignalId"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UpdateUserOperationExecutor.this.execute(null, this);
        }
    }

    public UpdateUserOperationExecutor(IUserBackendService iUserBackendService, IdentityModelStore identityModelStore, PropertiesModelStore propertiesModelStore, IRebuildUserService iRebuildUserService, NewRecordsState newRecordsState, IConsistencyManager iConsistencyManager, JwtTokenStore jwtTokenStore, IdentityVerificationService identityVerificationService) {
        Intrinsics.checkNotNullParameter(iUserBackendService, ProtectedFastSSH.s("ꩁ"));
        Intrinsics.checkNotNullParameter(identityModelStore, ProtectedFastSSH.s("ꩂ"));
        Intrinsics.checkNotNullParameter(propertiesModelStore, ProtectedFastSSH.s("ꩃ"));
        Intrinsics.checkNotNullParameter(iRebuildUserService, ProtectedFastSSH.s("ꩄ"));
        Intrinsics.checkNotNullParameter(newRecordsState, ProtectedFastSSH.s("ꩅ"));
        Intrinsics.checkNotNullParameter(iConsistencyManager, ProtectedFastSSH.s("ꩆ"));
        Intrinsics.checkNotNullParameter(jwtTokenStore, ProtectedFastSSH.s("ꩇ"));
        Intrinsics.checkNotNullParameter(identityVerificationService, ProtectedFastSSH.s("ꩈ"));
        this._userBackend = iUserBackendService;
        this._identityModelStore = identityModelStore;
        this._propertiesModelStore = propertiesModelStore;
        this._buildUserService = iRebuildUserService;
        this._newRecordState = newRecordsState;
        this._consistencyManager = iConsistencyManager;
        this._jwtTokenStore = jwtTokenStore;
        this._identityVerificationService = identityVerificationService;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02f8 A[Catch: BackendException -> 0x0069, TryCatch #3 {BackendException -> 0x0069, blocks: (B:17:0x0064, B:99:0x02e6, B:101:0x02f8, B:102:0x02fc, B:104:0x0302, B:106:0x030c, B:107:0x0336, B:109:0x033a, B:110:0x035e, B:112:0x0362), top: B:148:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0302 A[Catch: BackendException -> 0x0069, TryCatch #3 {BackendException -> 0x0069, blocks: (B:17:0x0064, B:99:0x02e6, B:101:0x02f8, B:102:0x02fc, B:104:0x0302, B:106:0x030c, B:107:0x0336, B:109:0x033a, B:110:0x035e, B:112:0x0362), top: B:148:0x0064 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:123:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:125:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:126:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:128:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:134:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:136:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:138:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:139:0x040a  */
    /* JADX WARN: Code duplicated, block: B:151:0x0336 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:0x030c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x035e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:154:0x033a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:155:0x0362 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x02fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:92:0x02b0 A[Catch: BackendException -> 0x0083, TryCatch #0 {BackendException -> 0x0083, blocks: (B:22:0x007e, B:90:0x02ac, B:92:0x02b0, B:96:0x02cc), top: B:143:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:94:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:96:0x02cc A[Catch: BackendException -> 0x0083, TRY_LEAVE, TryCatch #0 {BackendException -> 0x0083, blocks: (B:22:0x007e, B:90:0x02ac, B:92:0x02b0, B:96:0x02cc), top: B:143:0x007e }] */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02e3, code lost:
    
        if (r2.resolveConditionsWithID(r7, r12) == r3) goto L98;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object execute(List<? extends Operation> list, Continuation<? super ExecutionResponse> continuation) throws Exception {
        AnonymousClass1 anonymousClass1;
        String appId;
        String str;
        String str2;
        String str3;
        UpdateUserOperationExecutor updateUserOperationExecutor;
        String str4;
        UpdateUserOperationExecutor updateUserOperationExecutor2;
        int iIntValue;
        long sessionTime;
        BigDecimal amountSpent;
        ArrayList arrayList;
        RywData rywData;
        IConsistencyManager iConsistencyManager;
        IamFetchRywTokenKey iamFetchRywTokenKey;
        int i;
        List<? extends Operation> list2 = list;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = anonymousClass2.label;
        int i3 = 1;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Logging.log(LogLevel.DEBUG, ProtectedFastSSH.s("ꩊ") + list2 + ')');
            PropertiesObject propertiesObject = new PropertiesObject(null, null, null, null, null, null, 63, null);
            appId = null;
            PropertiesDeltasObject propertiesDeltasObject = new PropertiesDeltasObject(null, null, null, null, 15, null);
            Iterator<? extends Operation> it = list2.iterator();
            PropertiesDeltasObject propertiesDeltasObject2 = propertiesDeltasObject;
            String onesignalId = null;
            boolean z = 0;
            PropertiesObject propertiesObjectCreatePropertiesFromOperation = propertiesObject;
            while (it.hasNext()) {
                Operation next = it.next();
                if (next instanceof SetTagOperation) {
                    if (appId == null) {
                        SetTagOperation setTagOperation = (SetTagOperation) next;
                        appId = setTagOperation.getAppId();
                        onesignalId = setTagOperation.getOnesignalId();
                    }
                    propertiesObjectCreatePropertiesFromOperation = PropertyOperationHelper.INSTANCE.createPropertiesFromOperation((SetTagOperation) next, propertiesObjectCreatePropertiesFromOperation);
                } else if (next instanceof DeleteTagOperation) {
                    if (appId == null) {
                        DeleteTagOperation deleteTagOperation = (DeleteTagOperation) next;
                        appId = deleteTagOperation.getAppId();
                        onesignalId = deleteTagOperation.getOnesignalId();
                    }
                    propertiesObjectCreatePropertiesFromOperation = PropertyOperationHelper.INSTANCE.createPropertiesFromOperation((DeleteTagOperation) next, propertiesObjectCreatePropertiesFromOperation);
                } else if (next instanceof SetPropertyOperation) {
                    if (appId == null) {
                        SetPropertyOperation setPropertyOperation = (SetPropertyOperation) next;
                        appId = setPropertyOperation.getAppId();
                        onesignalId = setPropertyOperation.getOnesignalId();
                    }
                    propertiesObjectCreatePropertiesFromOperation = PropertyOperationHelper.INSTANCE.createPropertiesFromOperation((SetPropertyOperation) next, propertiesObjectCreatePropertiesFromOperation);
                } else if (next instanceof TrackSessionStartOperation) {
                    if (appId == null) {
                        TrackSessionStartOperation trackSessionStartOperation = (TrackSessionStartOperation) next;
                        appId = trackSessionStartOperation.getAppId();
                        onesignalId = trackSessionStartOperation.getOnesignalId();
                    }
                    if (propertiesDeltasObject2.getSessionCount() != null) {
                        Integer sessionCount = propertiesDeltasObject2.getSessionCount();
                        Intrinsics.checkNotNull(sessionCount);
                        iIntValue = sessionCount.intValue() + i3;
                    } else {
                        iIntValue = i3;
                    }
                    propertiesDeltasObject2 = new PropertiesDeltasObject(propertiesDeltasObject2.getSessionTime(), Boxing.boxInt(iIntValue), propertiesDeltasObject2.getAmountSpent(), propertiesDeltasObject2.getPurchases());
                    z = i3;
                } else if (next instanceof TrackSessionEndOperation) {
                    if (appId == null) {
                        TrackSessionEndOperation trackSessionEndOperation = (TrackSessionEndOperation) next;
                        appId = trackSessionEndOperation.getAppId();
                        onesignalId = trackSessionEndOperation.getOnesignalId();
                    }
                    if (propertiesDeltasObject2.getSessionTime() != null) {
                        Long sessionTime2 = propertiesDeltasObject2.getSessionTime();
                        Intrinsics.checkNotNull(sessionTime2);
                        sessionTime = sessionTime2.longValue() + ((TrackSessionEndOperation) next).getSessionTime();
                    } else {
                        sessionTime = ((TrackSessionEndOperation) next).getSessionTime();
                    }
                    propertiesDeltasObject2 = new PropertiesDeltasObject(Boxing.boxLong(sessionTime), propertiesDeltasObject2.getSessionCount(), propertiesDeltasObject2.getAmountSpent(), propertiesDeltasObject2.getPurchases());
                } else {
                    if (!(next instanceof TrackPurchaseOperation)) {
                        throw new Exception(ProtectedFastSSH.s("ꩌ") + next);
                    }
                    if (appId == null) {
                        TrackPurchaseOperation trackPurchaseOperation = (TrackPurchaseOperation) next;
                        appId = trackPurchaseOperation.getAppId();
                        onesignalId = trackPurchaseOperation.getOnesignalId();
                    }
                    if (propertiesDeltasObject2.getAmountSpent() != null) {
                        BigDecimal amountSpent2 = propertiesDeltasObject2.getAmountSpent();
                        Intrinsics.checkNotNull(amountSpent2);
                        amountSpent = amountSpent2.add(((TrackPurchaseOperation) next).getAmountSpent());
                        Intrinsics.checkNotNullExpressionValue(amountSpent, ProtectedFastSSH.s("ꩋ"));
                    } else {
                        amountSpent = ((TrackPurchaseOperation) next).getAmountSpent();
                    }
                    if (propertiesDeltasObject2.getPurchases() != null) {
                        List<PurchaseObject> purchases = propertiesDeltasObject2.getPurchases();
                        Intrinsics.checkNotNull(purchases);
                        arrayList = CollectionsKt.toMutableList((Collection) purchases);
                    } else {
                        arrayList = new ArrayList();
                    }
                    for (PurchaseInfo purchaseInfo : ((TrackPurchaseOperation) next).getPurchases()) {
                        arrayList.add(new PurchaseObject(purchaseInfo.getSku(), purchaseInfo.getIso(), purchaseInfo.getAmount()));
                        it = it;
                    }
                    propertiesDeltasObject2 = new PropertiesDeltasObject(propertiesDeltasObject2.getSessionTime(), propertiesDeltasObject2.getSessionCount(), amountSpent, arrayList);
                    it = it;
                    i3 = 1;
                }
            }
            if (appId != null && onesignalId != null) {
                IvBackendParams ivBackendParamsResolveBackendParams = ExecutorsIvExtensionsKt.resolveBackendParams((Operation) CollectionsKt.first((List) list2), onesignalId, this._jwtTokenStore, this._identityVerificationService);
                try {
                    IUserBackendService iUserBackendService = this._userBackend;
                    String aliasLabel = ivBackendParamsResolveBackendParams.getAliasLabel();
                    String aliasValue = ivBackendParamsResolveBackendParams.getAliasValue();
                    String jwt = ivBackendParamsResolveBackendParams.getJwt();
                    anonymousClass2.L$0 = this;
                    anonymousClass2.L$1 = list2;
                    anonymousClass2.L$2 = appId;
                    anonymousClass2.L$3 = onesignalId;
                    anonymousClass2.label = 1;
                    str = onesignalId;
                    try {
                        Object objUpdateUser = iUserBackendService.updateUser(appId, aliasLabel, aliasValue, propertiesObjectCreatePropertiesFromOperation, z, propertiesDeltasObject2, jwt, anonymousClass2);
                        if (objUpdateUser != coroutine_suspended) {
                            str4 = str;
                            obj = objUpdateUser;
                            updateUserOperationExecutor2 = this;
                            rywData = (RywData) obj;
                            if (rywData != null) {
                                iConsistencyManager = updateUserOperationExecutor2._consistencyManager;
                                iamFetchRywTokenKey = IamFetchRywTokenKey.USER;
                                anonymousClass2.L$0 = updateUserOperationExecutor2;
                                anonymousClass2.L$1 = list2;
                                anonymousClass2.L$2 = appId;
                                anonymousClass2.L$3 = str4;
                                anonymousClass2.label = 2;
                                if (iConsistencyManager.setRywData(str4, iamFetchRywTokenKey, rywData, anonymousClass2) == coroutine_suspended) {
                                }
                                str2 = str4;
                                str3 = appId;
                                updateUserOperationExecutor = updateUserOperationExecutor2;
                            } else {
                                IConsistencyManager iConsistencyManager2 = updateUserOperationExecutor2._consistencyManager;
                                String strS = ProtectedFastSSH.s("ꩍ");
                                anonymousClass2.L$0 = updateUserOperationExecutor2;
                                anonymousClass2.L$1 = list2;
                                anonymousClass2.L$2 = appId;
                                anonymousClass2.L$3 = str4;
                                anonymousClass2.label = 3;
                            }
                            if (Intrinsics.areEqual(updateUserOperationExecutor._identityModelStore.getModel().getOnesignalId(), str2)) {
                                for (Operation operation : list2) {
                                    if (operation instanceof SetTagOperation) {
                                        Model.setStringProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel().getTags(), ((SetTagOperation) operation).getKey(), ((SetTagOperation) operation).getValue(), ProtectedFastSSH.s("\uaa4e"), false, 8, null);
                                    } else if (operation instanceof DeleteTagOperation) {
                                        Model.setOptStringProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel().getTags(), ((DeleteTagOperation) operation).getKey(), null, ProtectedFastSSH.s("\uaa4e"), false, 8, null);
                                    } else if (operation instanceof SetPropertyOperation) {
                                        Model.setOptAnyProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel(), ((SetPropertyOperation) operation).getProperty(), ((SetPropertyOperation) operation).getValue(), ProtectedFastSSH.s("\uaa4e"), false, 8, null);
                                    }
                                }
                            }
                        }
                        return coroutine_suspended;
                    } catch (BackendException e) {
                        e = e;
                        str2 = str;
                        str3 = appId;
                        updateUserOperationExecutor = this;
                        i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                        if (i == 1) {
                            return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                        }
                        if (i == 2) {
                            return new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                        }
                        if (i != 3) {
                            return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                        }
                        if (e.getStatusCode() != 404) {
                        }
                        List<Operation> rebuildOperationsIfCurrentUser = updateUserOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(str3, str2);
                        if (rebuildOperationsIfCurrentUser == null) {
                        }
                    }
                } catch (BackendException e2) {
                    e = e2;
                    str = onesignalId;
                }
            }
        } else if (i2 == 1) {
            str4 = (String) anonymousClass2.L$3;
            appId = (String) anonymousClass2.L$2;
            list2 = (List) anonymousClass2.L$1;
            updateUserOperationExecutor2 = (UpdateUserOperationExecutor) anonymousClass2.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                rywData = (RywData) obj;
                if (rywData != null) {
                    iConsistencyManager = updateUserOperationExecutor2._consistencyManager;
                    iamFetchRywTokenKey = IamFetchRywTokenKey.USER;
                    anonymousClass2.L$0 = updateUserOperationExecutor2;
                    anonymousClass2.L$1 = list2;
                    anonymousClass2.L$2 = appId;
                    anonymousClass2.L$3 = str4;
                    anonymousClass2.label = 2;
                    if (iConsistencyManager.setRywData(str4, iamFetchRywTokenKey, rywData, anonymousClass2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    str2 = str4;
                    str3 = appId;
                    updateUserOperationExecutor = updateUserOperationExecutor2;
                } else {
                    IConsistencyManager iConsistencyManager3 = updateUserOperationExecutor2._consistencyManager;
                    String strS2 = ProtectedFastSSH.s("ꩍ");
                    anonymousClass2.L$0 = updateUserOperationExecutor2;
                    anonymousClass2.L$1 = list2;
                    anonymousClass2.L$2 = appId;
                    anonymousClass2.L$3 = str4;
                    anonymousClass2.label = 3;
                }
                if (Intrinsics.areEqual(updateUserOperationExecutor._identityModelStore.getModel().getOnesignalId(), str2)) {
                    while (r0.hasNext()) {
                        if (operation instanceof SetTagOperation) {
                            Model.setStringProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel().getTags(), ((SetTagOperation) operation).getKey(), ((SetTagOperation) operation).getValue(), ProtectedFastSSH.s("\uaa4e"), false, 8, null);
                        } else if (operation instanceof DeleteTagOperation) {
                            Model.setOptStringProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel().getTags(), ((DeleteTagOperation) operation).getKey(), null, ProtectedFastSSH.s("\uaa4e"), false, 8, null);
                        } else if (operation instanceof SetPropertyOperation) {
                            Model.setOptAnyProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel(), ((SetPropertyOperation) operation).getProperty(), ((SetPropertyOperation) operation).getValue(), ProtectedFastSSH.s("\uaa4e"), false, 8, null);
                        }
                    }
                }
            } catch (BackendException e3) {
                e = e3;
                str2 = str4;
                str3 = appId;
                updateUserOperationExecutor = updateUserOperationExecutor2;
                i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                if (i == 1) {
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i == 2) {
                    return new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i != 3) {
                    return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                }
                if (e.getStatusCode() != 404 && updateUserOperationExecutor._newRecordState.isInMissingRetryWindow(str2)) {
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                List<Operation> rebuildOperationsIfCurrentUser2 = updateUserOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(str3, str2);
                if (rebuildOperationsIfCurrentUser2 == null) {
                }
            }
        } else {
            if (i2 != 2 && i2 != 3) {
                throw new IllegalStateException(ProtectedFastSSH.s("ꩉ"));
            }
            str2 = (String) anonymousClass2.L$3;
            str3 = (String) anonymousClass2.L$2;
            list2 = (List) anonymousClass2.L$1;
            updateUserOperationExecutor = (UpdateUserOperationExecutor) anonymousClass2.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                if (Intrinsics.areEqual(updateUserOperationExecutor._identityModelStore.getModel().getOnesignalId(), str2)) {
                    while (r0.hasNext()) {
                        if (operation instanceof SetTagOperation) {
                            Model.setStringProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel().getTags(), ((SetTagOperation) operation).getKey(), ((SetTagOperation) operation).getValue(), ProtectedFastSSH.s("\uaa4e"), false, 8, null);
                        } else if (operation instanceof DeleteTagOperation) {
                            Model.setOptStringProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel().getTags(), ((DeleteTagOperation) operation).getKey(), null, ProtectedFastSSH.s("\uaa4e"), false, 8, null);
                        } else if (operation instanceof SetPropertyOperation) {
                            Model.setOptAnyProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel(), ((SetPropertyOperation) operation).getProperty(), ((SetPropertyOperation) operation).getValue(), ProtectedFastSSH.s("\uaa4e"), false, 8, null);
                        }
                    }
                }
            } catch (BackendException e4) {
                e = e4;
                i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                if (i == 1) {
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i == 2) {
                    return new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i != 3) {
                    return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                }
                if (e.getStatusCode() != 404) {
                }
                List<Operation> rebuildOperationsIfCurrentUser3 = updateUserOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(str3, str2);
                return rebuildOperationsIfCurrentUser3 == null ? new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null) : new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, rebuildOperationsIfCurrentUser3, e.getRetryAfterSeconds(), 2, null);
            }
        }
        return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
    }

    @Override
    public List<String> getOperations() {
        return CollectionsKt.listOf((Object[]) new String[]{ProtectedFastSSH.s("\uaa3c"), ProtectedFastSSH.s("ꩀ"), ProtectedFastSSH.s("\uaa3f"), ProtectedFastSSH.s("\uaa3b"), ProtectedFastSSH.s("\uaa3e"), ProtectedFastSSH.s("\uaa3d")});
    }
}
