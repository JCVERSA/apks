package com.transsion.vishatransfer.manager;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pDeviceList;
import android.net.wifi.p2p.WifiP2pInfo;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.media3.exoplayer.rtsp.RtspMediaSource;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.audiotagger.audio.mp3.MPEGFrameHeader;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.hubsdk.api.net.wifi.TranWifiManager;
import com.transsion.socket.SocketMain;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.vishatransfer.connection.ConnectClientManager;
import com.transsion.vishatransfer.connection.ConnectServerManager;
import com.transsion.vishatransfer.data.ConnectedState;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.data.WifiModel;
import com.transsion.vishatransfer.manager.WifiTransferManager;
import com.transsion.vishatransfer.manager.callback.AccessReceiverActionListener;
import com.transsion.vishatransfer.manager.callback.VishaSocketClientListener;
import com.transsion.vishatransfer.manager.callback.VishaSocketServerListener;
import com.transsion.vishatransfer.socket.TransferSocketCodeData;
import defpackage.c74;
import defpackage.cl0;
import defpackage.cr0;
import defpackage.el0;
import defpackage.hk1;
import defpackage.i81;
import defpackage.mc2;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.pt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.se;
import defpackage.u74;
import defpackage.v6a;
import defpackage.w74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.y71;
import defpackage.z45;
import defpackage.zfb;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.d;
import org.greenrobot.greendao.generator.Schema;

@Metadata(d1 = {"\u0000\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0004¥\u0001¨\u0001\b\u0016\u0018\u0000 °\u00012\u00020\u0001:\u0004°\u0001±\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0082@¢\u0006\u0004\b\u0010\u0010\u0011J \u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0083@¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0018\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019H\u0082@¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0082@¢\u0006\u0004\b\u001d\u0010\u0011J\u0018\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0082@¢\u0006\u0004\b\u001e\u0010\u0011J \u0010 \u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001aH\u0083@¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J\u001d\u0010(\u001a\u00020\u00162\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00160&H\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\u00162\u0006\u0010+\u001a\u00020*H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0016H\u0002¢\u0006\u0004\b.\u0010\u0018J\u0017\u00100\u001a\u00020\u00162\u0006\u0010+\u001a\u00020/H\u0002¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0016H\u0002¢\u0006\u0004\b2\u0010\u0018J\u000f\u00103\u001a\u00020\u0016H\u0002¢\u0006\u0004\b3\u0010\u0018J\u000f\u00104\u001a\u00020\u0016H\u0002¢\u0006\u0004\b4\u0010\u0018J\u000f\u00105\u001a\u00020\nH\u0002¢\u0006\u0004\b5\u0010\fJ\u000f\u00106\u001a\u00020\u0016H\u0002¢\u0006\u0004\b6\u0010\u0018J\u000f\u00107\u001a\u00020\u0016H\u0002¢\u0006\u0004\b7\u0010\u0018J\u000f\u00108\u001a\u00020\u0016H\u0002¢\u0006\u0004\b8\u0010\u0018J\u0010\u00109\u001a\u00020\u000fH\u0082@¢\u0006\u0004\b9\u0010\u001cJ\u0012\u0010;\u001a\u0004\u0018\u00010:H\u0082@¢\u0006\u0004\b;\u0010\u001cJ/\u0010>\u001a\u00020\u00162\u001e\u0010'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0017¢\u0006\u0004\b>\u0010?J/\u0010@\u001a\u00020\u00162\u001e\u0010'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0017¢\u0006\u0004\b@\u0010?J/\u0010A\u001a\u00020\u00162\u001e\u0010'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0016¢\u0006\u0004\bA\u0010?J\u0017\u0010C\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u0006H\u0016¢\u0006\u0004\bC\u0010DJ/\u0010E\u001a\u00020\u00162\u001e\u0010'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0016¢\u0006\u0004\bE\u0010?J/\u0010F\u001a\u00020\u00162\u001e\u0010'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0016¢\u0006\u0004\bF\u0010?J7\u0010G\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u001a2\u001e\u0010'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0017¢\u0006\u0004\bG\u0010HJ\u0017\u0010K\u001a\u00020\u00162\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bK\u0010LJ\u001f\u0010M\u001a\u00020\u00162\u0006\u0010+\u001a\u00020I2\u0006\u0010B\u001a\u00020\u0006H\u0016¢\u0006\u0004\bM\u0010NJ\u0015\u0010P\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020O¢\u0006\u0004\bP\u0010QJ\u000f\u0010R\u001a\u00020\u0016H\u0016¢\u0006\u0004\bR\u0010\u0018J\u000f\u0010S\u001a\u00020\u0016H\u0016¢\u0006\u0004\bS\u0010\u0018J\u001d\u0010V\u001a\u00020\u00162\f\u0010U\u001a\b\u0012\u0004\u0012\u00020T0\u0019H\u0016¢\u0006\u0004\bV\u0010WJ\u0017\u0010Z\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bZ\u0010[J\u0017\u0010\\\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\b\\\u0010[J\u0017\u0010]\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u0006H\u0016¢\u0006\u0004\b]\u0010DJ7\u0010_\u001a\u00020\u00162&\u0010'\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010:\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160^H\u0016¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020\"H\u0016¢\u0006\u0004\ba\u0010bJ\u0017\u0010e\u001a\u00020d2\u0006\u0010c\u001a\u00020\nH\u0016¢\u0006\u0004\be\u0010fJ\u0017\u0010g\u001a\u00020d2\u0006\u0010c\u001a\u00020\nH\u0016¢\u0006\u0004\bg\u0010fJ\u0017\u0010h\u001a\u00020\u00062\u0006\u0010c\u001a\u00020\nH\u0016¢\u0006\u0004\bh\u0010iJ\u0017\u0010j\u001a\u00020d2\u0006\u0010c\u001a\u00020\nH\u0016¢\u0006\u0004\bj\u0010fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010kR\u0014\u0010l\u001a\u00020=8\u0002X\u0082D¢\u0006\u0006\n\u0004\bl\u0010mR\u0014\u0010o\u001a\u00020n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bo\u0010pR\u0014\u0010r\u001a\u00020q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\br\u0010sR\u0018\u0010u\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010vR\u0018\u0010x\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010zR\u0018\u0010|\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R%\u0010~\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0004\b~\u0010\u007f\u001a\u0005\b\u0080\u0001\u0010\f\"\u0006\b\u0081\u0001\u0010\u0082\u0001R*\u0010\u0084\u0001\u001a\u00030\u0083\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0084\u0001\u0010\u0085\u0001\u001a\u0006\b\u0084\u0001\u0010\u0086\u0001\"\u0006\b\u0087\u0001\u0010\u0088\u0001R\u0018\u0010\u0089\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010\u007fR\u0016\u0010\u008a\u0001\u001a\u00020=8\u0002X\u0082D¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010mR\u0016\u0010\u008b\u0001\u001a\u00020=8\u0002X\u0082D¢\u0006\u0007\n\u0005\b\u008b\u0001\u0010mR\u0017\u0010\u008c\u0001\u001a\u00020\u00068\u0002X\u0082D¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u008f\u0001\u001a\u00030\u008e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0017\u0010\u0091\u0001\u001a\u00020d8\u0002X\u0082D¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R(\u0010\u0093\u0001\u001a\u00020=8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0093\u0001\u0010m\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0006\b\u0096\u0001\u0010\u0097\u0001R(\u0010\u0098\u0001\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0098\u0001\u0010\u008d\u0001\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001\"\u0005\b\u009b\u0001\u0010DR\u0019\u0010\u009c\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u008d\u0001R\u0019\u0010\u009d\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u008d\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u0018\u0010 \u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b \u0001\u0010\u007fR\u0018\u0010¡\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¡\u0001\u0010\u007fR\"\u0010£\u0001\u001a\u000b\u0012\u0004\u0012\u00020I\u0018\u00010¢\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u0018\u0010¦\u0001\u001a\u00030¥\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R\u0018\u0010©\u0001\u001a\u00030¨\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b©\u0001\u0010ª\u0001R\u0018\u0010¬\u0001\u001a\u00030«\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u0018\u0010®\u0001\u001a\u00030«\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b®\u0001\u0010\u00ad\u0001R\u0018\u0010¯\u0001\u001a\u00030«\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¯\u0001\u0010\u00ad\u0001¨\u0006²\u0001"}, d2 = {"Lcom/transsion/vishatransfer/manager/WifiTransferManager;", "Lcom/transsion/vishatransfer/manager/ITransferHelper;", "Landroid/app/Application;", "context", MethodDecl.initName, "(Landroid/app/Application;)V", "", TrackingKey.CODE, "getSystemErrorCode", "(I)I", "", "isConnectedWifi", "()Z", "Landroid/net/wifi/p2p/WifiP2pManager$Channel;", "channel", "Lcom/transsion/vishatransfer/data/WifiModel;", "removeWifiGroupAsync", "(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;", "Landroid/net/wifi/p2p/WifiP2pConfig;", "wifiConfig", "createWifiGroup", "(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Lwh1;)Ljava/lang/Object;", "Lzfb;", "removeGroup", "()V", "", "Landroid/net/wifi/p2p/WifiP2pDevice;", "requestPeers", "(Lwh1;)Ljava/lang/Object;", "searchWifiGroupAsync", "disconnect", "device", "connectWifi", "(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pDevice;Lwh1;)Ljava/lang/Object;", "Lcom/transsion/vishatransfer/data/ConnectedState;", "socketState", "setConnectState", "(Lcom/transsion/vishatransfer/data/ConnectedState;)V", "Lkotlin/Function0;", "callback", "doOnMainThread", "(Lc74;)V", "Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;", "listener", "registerClientListener", "(Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;)V", "unRegisterClientListener", "Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;", "registerServerListener", "(Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;)V", "unRegisterServerListener", "registerPeersReceiver", "unRegisterPeersReceiver", "checkLegal", "checkCreateP2pAndChannel", "registerP2pConnectReceiver", "registerServerReceiver", "requestConnectionInfo", "Landroid/net/wifi/p2p/WifiP2pInfo;", "getConnectionInfoInner", "Lkotlin/Function3;", "", "createGroupAsyncWithRetry", "(Lu74;)V", "createGroupAsync", "removeGroupAsync", "userType", "release", "(I)V", "searchDevicesAsync", "disconnectAsync", "connectAsync", "(Landroid/net/wifi/p2p/WifiP2pDevice;Lu74;)V", "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;", "accessReceiverActionListener", "unregisterCallback", "(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V", "registerListener", "(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V", "Landroid/content/Context;", "checkPermission", "(Landroid/content/Context;)Z", "unRegisterServerReceiver", "unregisterP2pConnectReceiver", "Lcom/transsion/vishatransfer/data/FileData;", "fileDataList", "sendFileDataToServerAsync", "(Ljava/util/List;)V", "Lcom/transsion/vishatransfer/data/Conversation;", "conversation", "sendConversationToService", "(Lcom/transsion/vishatransfer/data/Conversation;)V", "sendConversationToClient", "cancelTransfer", "Lkotlin/Function4;", "getConnectionInfoAsync", "(Lw74;)V", "getConnectState", "()Lcom/transsion/vishatransfer/data/ConnectedState;", "isClient", "", "getAverageSpeedPerSecond", "(Z)J", "getRecentSpeedPerSecond", "getTotalNum", "(Z)I", "getTotalSize", "Landroid/app/Application;", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "Lhk1;", "coroutineExceptionHandler", "Lhk1;", "Lnk1;", "coroutineScope", "Lnk1;", "Landroid/net/wifi/WifiManager;", "mWifiManager", "Landroid/net/wifi/WifiManager;", "Landroid/net/wifi/p2p/WifiP2pManager;", "p2p", "Landroid/net/wifi/p2p/WifiP2pManager;", "Landroid/net/wifi/p2p/WifiP2pManager$Channel;", "Landroid/content/IntentFilter;", "filter", "Landroid/content/IntentFilter;", VkConstant.VK_EVENT_STARTED, "Z", "getStarted", "setStarted", "(Z)V", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isConnected", "Ljava/util/concurrent/atomic/AtomicBoolean;", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "setConnected", "(Ljava/util/concurrent/atomic/AtomicBoolean;)V", "isCreateGroup", "mSsid", "mPwd", "mRetryCount", "I", "Ljava/lang/Object;", "connectLock", "Ljava/lang/Object;", "connnectTimeOut", "J", "ipAddress", "getIpAddress", "()Ljava/lang/String;", "setIpAddress", "(Ljava/lang/String;)V", "mUserType", "getMUserType", "()I", "setMUserType", "createRetryCount", "createCount", "mConnectState", "Lcom/transsion/vishatransfer/data/ConnectedState;", "mIsStartSend", "mIsStartReceive", "", "mListeners", "Ljava/util/List;", "com/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1", "socketClientListener", "Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;", "com/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1", "socketServerListener", "Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;", "Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;", "receiverDevices", "Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;", "serverReceiver", "p2pConnectReceiver", "Companion", "AccessPointReceiver", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class WifiTransferManager implements ITransferHelper {

    public static final Companion INSTANCE = new Companion(null);
    public static final int ERROR_CODE_CALL_AIP_BUSY = 1006;
    public static final int ERROR_CODE_CALL_API_UNKNOW = 1004;
    public static final int ERROR_CODE_CALL_API_UNSUPPORTED = 1005;
    public static final int ERROR_CODE_CONNECT_FAILED = 1007;
    public static final int ERROR_CODE_GET_CONNECTION_INFO_FAILED = 1008;
    public static final int ERROR_CODE_HOT_SPOT_OPEN = 1009;
    public static final int ERROR_CODE_OTHERS = 1003;
    public static final int ERROR_CODE_PERMISSION = 1001;
    public static final int ERROR_CODE_WIFI_NOT_ENABLED = 1002;
    private static volatile WifiTransferManager instance;
    private final String TAG;
    private WifiP2pManager.Channel channel;
    private final Object connectLock;
    private final long connnectTimeOut;
    private final Application context;
    private final hk1 coroutineExceptionHandler;
    private final nk1 coroutineScope;
    private int createCount;
    private int createRetryCount;
    private IntentFilter filter;
    private String ipAddress;
    private AtomicBoolean isConnected;
    private boolean isCreateGroup;
    private ConnectedState mConnectState;
    private boolean mIsStartReceive;
    private boolean mIsStartSend;
    private List<AccessReceiverActionListener> mListeners;
    private final String mPwd;
    private final int mRetryCount;
    private final String mSsid;
    private int mUserType;
    private WifiManager mWifiManager;
    private WifiP2pManager p2p;
    private final AccessPointReceiver p2pConnectReceiver;
    private final AccessPointReceiver receiverDevices;
    private final AccessPointReceiver serverReceiver;
    private final WifiTransferManager$socketClientListener$1 socketClientListener;
    private final WifiTransferManager$socketServerListener$1 socketServerListener;
    private boolean started;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;", "Landroid/content/BroadcastReceiver;", "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;", "accessReceiverActionListener", MethodDecl.initName, "(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "Lzfb;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;", "", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AccessPointReceiver extends BroadcastReceiver {
        private final String TAG;
        private final AccessReceiverActionListener accessReceiverActionListener;

        /* JADX WARN: Multi-variable type inference failed */
        public AccessPointReceiver() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            AccessReceiverActionListener accessReceiverActionListener;
            y45.j(context, "context");
            y45.j(intent, "intent");
            String action = intent.getAction();
            if (action != null) {
                int iHashCode = action.hashCode();
                if (iHashCode != -1772632330) {
                    if (iHashCode == -1394739139 && action.equals("android.net.wifi.p2p.PEERS_CHANGED") && (accessReceiverActionListener = this.accessReceiverActionListener) != null) {
                        accessReceiverActionListener.onPeersAvailable(y71.k());
                        return;
                    }
                    return;
                }
                if (action.equals("android.net.wifi.p2p.CONNECTION_STATE_CHANGE")) {
                    NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                    AccessReceiverActionListener accessReceiverActionListener2 = this.accessReceiverActionListener;
                    if (accessReceiverActionListener2 != null) {
                        accessReceiverActionListener2.onConnectionChanged(networkInfo, 1);
                    }
                }
            }
        }

        public AccessPointReceiver(AccessReceiverActionListener accessReceiverActionListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : accessReceiverActionListener);
        }

        public AccessPointReceiver(AccessReceiverActionListener accessReceiverActionListener) {
            this.accessReceiverActionListener = accessReceiverActionListener;
            this.TAG = "AccessPointReceiver";
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\b\u001a\u00020\tH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;", "", MethodDecl.initName, "()V", "instance", "Lcom/transsion/vishatransfer/manager/WifiTransferManager;", "getInstance", "Lcom/transsion/vishatransfer/manager/ITransferHelper;", "context", "Landroid/app/Application;", "ERROR_CODE_PERMISSION", "", "ERROR_CODE_WIFI_NOT_ENABLED", "ERROR_CODE_OTHERS", "ERROR_CODE_CALL_API_UNKNOW", "ERROR_CODE_CALL_API_UNSUPPORTED", "ERROR_CODE_CALL_AIP_BUSY", "ERROR_CODE_CONNECT_FAILED", "ERROR_CODE_GET_CONNECTION_INFO_FAILED", "ERROR_CODE_HOT_SPOT_OPEN", "isHotspotEnabled", "", "isHotspotEnabledCommon", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean isHotspotEnabledCommon(Application context) {
            try {
                Object systemService = context.getSystemService("wifi");
                y45.h(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                WifiManager wifiManager = (WifiManager) systemService;
                Object objInvoke = wifiManager.getClass().getDeclaredMethod("getWifiApState", null).invoke(wifiManager, null);
                y45.h(objInvoke, "null cannot be cast to non-null type kotlin.Int");
                int iIntValue = ((Integer) objInvoke).intValue();
                Object obj = wifiManager.getClass().getDeclaredField("WIFI_AP_STATE_ENABLED").get(wifiManager);
                y45.h(obj, "null cannot be cast to non-null type kotlin.Int");
                return iIntValue == ((Integer) obj).intValue();
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }

        public final ITransferHelper getInstance(Application context) {
            y45.j(context, "context");
            WifiTransferManager wifiTransferManager = WifiTransferManager.instance;
            if (wifiTransferManager == null) {
                synchronized (this) {
                    wifiTransferManager = WifiTransferManager.instance;
                    if (wifiTransferManager == null) {
                        wifiTransferManager = new WifiTransferManager(context, null);
                        WifiTransferManager.instance = wifiTransferManager;
                    }
                }
            }
            return wifiTransferManager;
        }

        public final boolean isHotspotEnabled() {
            Application applicationA = se.a();
            y45.i(applicationA, "getApp(...)");
            return isHotspotEnabledCommon(applicationA) || new TranWifiManager().isWifiApEnabled();
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$connectAsync$1", f = "WifiTransferManager.kt", l = {483, 492, 493, TypedValues.PositionType.TYPE_PERCENT_Y}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final u74 $callback;
        final WifiP2pDevice $device;
        int I$0;
        Object L$0;
        Object L$1;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$connectAsync$1$1", f = "WifiTransferManager.kt", l = {}, m = "invokeSuspend")
        public static final class C02591 extends SuspendLambda implements s74 {
            final u74 $callback;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02591(u74 u74Var, wh1<? super C02591> wh1Var) {
                super(2, wh1Var);
                this.$callback = u74Var;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new C02591(this.$callback, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((C02591) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                this.$callback.invoke(mk0.a(false), "Wifi not enabled", mk0.b(1002));
                return zfb.a;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$connectAsync$1$4", f = "WifiTransferManager.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass4 extends SuspendLambda implements s74 {
            final u74 $callback;
            int label;
            final WifiTransferManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass4(WifiTransferManager wifiTransferManager, u74 u74Var, wh1<? super AnonymousClass4> wh1Var) {
                super(2, wh1Var);
                this.this$0 = wifiTransferManager;
                this.$callback = u74Var;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass4(this.this$0, this.$callback, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass4) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                this.$callback.invoke(mk0.a(this.this$0.getIsConnected().get()), "", mk0.b(this.this$0.getIsConnected().get() ? 0 : 1007));
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(u74 u74Var, WifiP2pDevice wifiP2pDevice, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$callback = u74Var;
            this.$device = wifiP2pDevice;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return WifiTransferManager.this.new AnonymousClass1(this.$callback, this.$device, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:24:0x0069 A[PHI: r12
          0x0069: PHI (r12v10 int) = (r12v4 int), (r12v12 int) binds: [B:23:0x0063, B:47:0x00d6] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:26:0x0071  */
        /* JADX WARN: Code duplicated, block: B:28:0x0079  */
        /* JADX WARN: Code duplicated, block: B:30:0x0092 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:31:0x0093  */
        /* JADX WARN: Code duplicated, block: B:34:0x00a9 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:56:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0077 -> B:36:0x00ad). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00a7 -> B:35:0x00aa). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                Method dump skipped, instruction units count: 244
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.vishatransfer.manager.WifiTransferManager.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$createGroupAsync$1", f = "WifiTransferManager.kt", l = {198, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 228}, m = "invokeSuspend")
    public static final class C23871 extends SuspendLambda implements s74 {
        final u74 $callback;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final WifiTransferManager this$0;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$createGroupAsync$1$2", f = "WifiTransferManager.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass2 extends SuspendLambda implements s74 {
            final u74 $callback;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(u74 u74Var, wh1<? super AnonymousClass2> wh1Var) {
                super(2, wh1Var);
                this.$callback = u74Var;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass2(this.$callback, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                this.$callback.invoke(mk0.a(false), "Wifi not enabled", mk0.b(1002));
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23871(u74 u74Var, WifiTransferManager wifiTransferManager, wh1<? super C23871> wh1Var) {
            super(2, wh1Var);
            this.$callback = u74Var;
            this.this$0 = wifiTransferManager;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new C23871(this.$callback, this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23871) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:53:0x013d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:54:0x013e  */
        @Override
        public final Object invokeSuspend(Object obj) {
            WifiP2pConfig wifiP2pConfigBuild;
            WifiTransferManager wifiTransferManager;
            u74 u74Var;
            List<WifiConfiguration> configuredNetworks;
            Object objCreateWifiGroup;
            WifiTransferManager wifiTransferManager2;
            Object objF = z45.f();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    c.b(obj);
                    return zfb.a;
                }
                if (i == 2) {
                    u74Var = (u74) this.L$2;
                    WifiTransferManager wifiTransferManager3 = (WifiTransferManager) this.L$1;
                    wifiP2pConfigBuild = (WifiP2pConfig) this.L$0;
                    c.b(obj);
                    wifiTransferManager = wifiTransferManager3;
                    WifiP2pManager.Channel channel = wifiTransferManager.channel;
                    y45.g(channel);
                    this.L$0 = wifiTransferManager;
                    this.L$1 = u74Var;
                    this.L$2 = null;
                    this.label = 3;
                    objCreateWifiGroup = wifiTransferManager.createWifiGroup(channel, wifiP2pConfigBuild, this);
                    if (objCreateWifiGroup == objF) {
                        return objF;
                    }
                    wifiTransferManager2 = wifiTransferManager;
                    obj = objCreateWifiGroup;
                } else if (i == 3) {
                    u74Var = (u74) this.L$1;
                    wifiTransferManager2 = (WifiTransferManager) this.L$0;
                    c.b(obj);
                } else {
                    if (i != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c.b(obj);
                }
                return zfb.a;
            }
            c.b(obj);
            if (WifiTransferManager.INSTANCE.isHotspotEnabled()) {
                this.$callback.invoke(mk0.a(false), "hotspot is opened", mk0.b(1009));
                return zfb.a;
            }
            WifiManager wifiManager = this.this$0.mWifiManager;
            if (wifiManager != null && (configuredNetworks = wifiManager.getConfiguredNetworks()) != null) {
                WifiTransferManager wifiTransferManager4 = this.this$0;
                for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                    WifiManager wifiManager2 = wifiTransferManager4.mWifiManager;
                    if (wifiManager2 != null) {
                        mk0.a(wifiManager2.disableNetwork(wifiConfiguration.networkId));
                    }
                }
            }
            WifiManager wifiManager3 = this.this$0.mWifiManager;
            if (wifiManager3 != null && !wifiManager3.isWifiEnabled()) {
                rx5 rx5VarC = mc2.c();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$callback, null);
                this.label = 1;
                if (cl0.g(rx5VarC, anonymousClass2, this) == objF) {
                    return objF;
                }
                return zfb.a;
            }
            this.this$0.checkCreateP2pAndChannel();
            WifiManager wifiManager4 = this.this$0.mWifiManager;
            wifiP2pConfigBuild = new WifiP2pConfig.Builder().setGroupOperatingBand((wifiManager4 == null || !wifiManager4.is5GHzBandSupported()) ? 1 : 2).setNetworkName(this.this$0.mSsid).setPassphrase(this.this$0.mPwd).build();
            y45.i(wifiP2pConfigBuild, "build(...)");
            if (this.this$0.channel != null) {
                wifiTransferManager = this.this$0;
                u74Var = this.$callback;
                WifiManager wifiManager5 = wifiTransferManager.mWifiManager;
                if (wifiManager5 != null) {
                    mk0.a(wifiManager5.disconnect());
                }
                WifiP2pManager.Channel channel2 = wifiTransferManager.channel;
                y45.g(channel2);
                this.L$0 = wifiP2pConfigBuild;
                this.L$1 = wifiTransferManager;
                this.L$2 = u74Var;
                this.label = 2;
                if (wifiTransferManager.removeWifiGroupAsync(channel2, this) == objF) {
                    return objF;
                }
                WifiP2pManager.Channel channel3 = wifiTransferManager.channel;
                y45.g(channel3);
                this.L$0 = wifiTransferManager;
                this.L$1 = u74Var;
                this.L$2 = null;
                this.label = 3;
                objCreateWifiGroup = wifiTransferManager.createWifiGroup(channel3, wifiP2pConfigBuild, this);
                if (objCreateWifiGroup == objF) {
                    return objF;
                }
                wifiTransferManager2 = wifiTransferManager;
                obj = objCreateWifiGroup;
            }
            return zfb.a;
            WifiModel wifiModel = (WifiModel) obj;
            if (wifiModel.isSuccess()) {
                wifiTransferManager2.isCreateGroup = true;
                ConnectServerManager.INSTANCE.checkServerSocket();
            }
            rx5 rx5VarC2 = mc2.c();
            WifiTransferManager$createGroupAsync$1$3$1 wifiTransferManager$createGroupAsync$1$3$1 = new WifiTransferManager$createGroupAsync$1$3$1(u74Var, wifiModel, null);
            this.L$0 = null;
            this.L$1 = null;
            this.label = 4;
            if (cl0.g(rx5VarC2, wifiTransferManager$createGroupAsync$1$3$1, this) == objF) {
                return objF;
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$disconnectAsync$1", f = "WifiTransferManager.kt", l = {TranSceneConfig.SCENE_TYPE_GAME_FF_KILL, 444}, m = "invokeSuspend")
    public static final class C23881 extends SuspendLambda implements s74 {
        final u74 $callback;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23881(u74 u74Var, wh1<? super C23881> wh1Var) {
            super(2, wh1Var);
            this.$callback = u74Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return WifiTransferManager.this.new C23881(this.$callback, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23881) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0070 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            u74 u74Var;
            rx5 rx5VarC;
            WifiTransferManager$disconnectAsync$1$1$1 wifiTransferManager$disconnectAsync$1$1$1;
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                WifiTransferManager.this.isCreateGroup = false;
                WifiP2pManager wifiP2pManager = WifiTransferManager.this.p2p;
                if (wifiP2pManager != null) {
                    wifiP2pManager.removeGroup(WifiTransferManager.this.channel, null);
                }
                if (WifiTransferManager.this.channel != null) {
                    WifiTransferManager wifiTransferManager = WifiTransferManager.this;
                    u74Var = this.$callback;
                    WifiP2pManager.Channel channel = wifiTransferManager.channel;
                    y45.g(channel);
                    this.L$0 = u74Var;
                    this.label = 1;
                    obj = wifiTransferManager.disconnect(channel, this);
                    if (obj == objF) {
                        return objF;
                    }
                    rx5VarC = mc2.c();
                    wifiTransferManager$disconnectAsync$1$1$1 = new WifiTransferManager$disconnectAsync$1$1$1(u74Var, (WifiModel) obj, null);
                    this.L$0 = null;
                    this.label = 2;
                    if (cl0.g(rx5VarC, wifiTransferManager$disconnectAsync$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else if (i == 1) {
                u74Var = (u74) this.L$0;
                c.b(obj);
                rx5VarC = mc2.c();
                wifiTransferManager$disconnectAsync$1$1$1 = new WifiTransferManager$disconnectAsync$1$1$1(u74Var, (WifiModel) obj, null);
                this.L$0 = null;
                this.label = 2;
                if (cl0.g(rx5VarC, wifiTransferManager$disconnectAsync$1$1$1, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$doOnMainThread$1", f = "WifiTransferManager.kt", l = {}, m = "invokeSuspend")
    public static final class C23891 extends SuspendLambda implements s74 {
        final c74 $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23891(c74 c74Var, wh1<? super C23891> wh1Var) {
            super(2, wh1Var);
            this.$callback = c74Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new C23891(this.$callback, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23891) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            this.$callback.invoke();
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$getConnectionInfoAsync$1", f = "WifiTransferManager.kt", l = {1012, 1017}, m = "invokeSuspend")
    public static final class C23901 extends SuspendLambda implements s74 {
        final w74 $callback;
        Object L$0;
        Object L$1;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$getConnectionInfoAsync$1$1", f = "WifiTransferManager.kt", l = {}, m = "invokeSuspend")
        public static final class C02601 extends SuspendLambda implements s74 {
            final w74 $callback;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02601(w74 w74Var, wh1<? super C02601> wh1Var) {
                super(2, wh1Var);
                this.$callback = w74Var;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new C02601(this.$callback, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((C02601) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                this.$callback.invoke(null, mk0.a(false), "Wifi not enabled", mk0.b(1002));
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23901(w74 w74Var, wh1<? super C23901> wh1Var) {
            super(2, wh1Var);
            this.$callback = w74Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return WifiTransferManager.this.new C23901(this.$callback, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23901) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0070  */
        /* JADX WARN: Code duplicated, block: B:26:0x0080  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final Object invokeSuspend(Object obj) {
            Ref$ObjectRef ref$ObjectRef;
            T t;
            Ref$ObjectRef ref$ObjectRef2;
            Object obj2;
            Object objF = z45.f();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    c.b(obj);
                    return zfb.a;
                }
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ref$ObjectRef = (Ref$ObjectRef) this.L$1;
                ref$ObjectRef2 = (Ref$ObjectRef) this.L$0;
                c.b(obj);
                t = obj;
                ref$ObjectRef.element = t;
                obj2 = ref$ObjectRef2.element;
                if (((WifiP2pInfo) obj2) != null) {
                    this.$callback.invoke(obj2, mk0.a(true), "", mk0.b(0));
                } else {
                    this.$callback.invoke(null, mk0.a(false), "get Connected Info Error", mk0.b(1008));
                }
                return zfb.a;
            }
            c.b(obj);
            WifiManager wifiManager = WifiTransferManager.this.mWifiManager;
            if (wifiManager != null && !wifiManager.isWifiEnabled()) {
                rx5 rx5VarC = mc2.c();
                C02601 c02601 = new C02601(this.$callback, null);
                this.label = 1;
                if (cl0.g(rx5VarC, c02601, this) == objF) {
                    return objF;
                }
                return zfb.a;
            }
            Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
            WifiTransferManager wifiTransferManager = WifiTransferManager.this;
            this.L$0 = ref$ObjectRef3;
            this.L$1 = ref$ObjectRef3;
            this.label = 2;
            Object connectionInfoInner = wifiTransferManager.getConnectionInfoInner(this);
            if (connectionInfoInner == objF) {
                return objF;
            }
            ref$ObjectRef = ref$ObjectRef3;
            t = connectionInfoInner;
            ref$ObjectRef2 = ref$ObjectRef;
            ref$ObjectRef.element = t;
            obj2 = ref$ObjectRef2.element;
            if (((WifiP2pInfo) obj2) != null) {
                this.$callback.invoke(obj2, mk0.a(true), "", mk0.b(0));
            } else {
                this.$callback.invoke(null, mk0.a(false), "get Connected Info Error", mk0.b(1008));
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$removeGroupAsync$1", f = "WifiTransferManager.kt", l = {251, MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3}, m = "invokeSuspend")
    public static final class C23921 extends SuspendLambda implements s74 {
        final u74 $callback;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23921(u74 u74Var, wh1<? super C23921> wh1Var) {
            super(2, wh1Var);
            this.$callback = u74Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return WifiTransferManager.this.new C23921(this.$callback, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23921) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:18:0x005e A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            u74 u74Var;
            rx5 rx5VarC;
            WifiTransferManager$removeGroupAsync$1$1$1 wifiTransferManager$removeGroupAsync$1$1$1;
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                WifiTransferManager.this.checkCreateP2pAndChannel();
                WifiTransferManager.this.isCreateGroup = false;
                WifiP2pManager.Channel channel = WifiTransferManager.this.channel;
                if (channel != null) {
                    WifiTransferManager wifiTransferManager = WifiTransferManager.this;
                    u74 u74Var2 = this.$callback;
                    this.L$0 = u74Var2;
                    this.label = 1;
                    obj = wifiTransferManager.removeWifiGroupAsync(channel, this);
                    if (obj == objF) {
                        return objF;
                    }
                    u74Var = u74Var2;
                    rx5VarC = mc2.c();
                    wifiTransferManager$removeGroupAsync$1$1$1 = new WifiTransferManager$removeGroupAsync$1$1$1(u74Var, (WifiModel) obj, null);
                    this.L$0 = null;
                    this.label = 2;
                    if (cl0.g(rx5VarC, wifiTransferManager$removeGroupAsync$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else if (i == 1) {
                u74Var = (u74) this.L$0;
                c.b(obj);
                rx5VarC = mc2.c();
                wifiTransferManager$removeGroupAsync$1$1$1 = new WifiTransferManager$removeGroupAsync$1$1$1(u74Var, (WifiModel) obj, null);
                this.L$0 = null;
                this.label = 2;
                if (cl0.g(rx5VarC, wifiTransferManager$removeGroupAsync$1$1$1, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$searchDevicesAsync$1", f = "WifiTransferManager.kt", l = {TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_7, TranSceneConfig.SCENE_TYPE_GAME_HOK_VICTORY, 366, 369, 370}, m = "invokeSuspend")
    public static final class C23931 extends SuspendLambda implements s74 {
        final u74 $callback;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final WifiTransferManager this$0;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$searchDevicesAsync$1$1", f = "WifiTransferManager.kt", l = {}, m = "invokeSuspend")
        public static final class C02611 extends SuspendLambda implements s74 {
            final u74 $callback;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02611(u74 u74Var, wh1<? super C02611> wh1Var) {
                super(2, wh1Var);
                this.$callback = u74Var;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new C02611(this.$callback, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((C02611) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                this.$callback.invoke(mk0.a(false), "Wifi not enabled", mk0.b(1002));
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23931(u74 u74Var, WifiTransferManager wifiTransferManager, wh1<? super C23931> wh1Var) {
            super(2, wh1Var);
            this.$callback = u74Var;
            this.this$0 = wifiTransferManager;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new C23931(this.$callback, this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23931) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:37:0x00d5 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:38:0x00d6  */
        /* JADX WARN: Code duplicated, block: B:45:0x0105 A[RETURN] */
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final Object invokeSuspend(Object obj) {
            u74 u74Var;
            WifiTransferManager wifiTransferManager;
            Object obj2;
            rx5 rx5VarC;
            WifiTransferManager$searchDevicesAsync$1$2$1 wifiTransferManager$searchDevicesAsync$1$2$1;
            WifiTransferManager wifiTransferManager2;
            Ref$ObjectRef ref$ObjectRef;
            Ref$ObjectRef ref$ObjectRef2;
            T t;
            rx5 rx5VarC2;
            WifiTransferManager$searchDevicesAsync$1$2$2 wifiTransferManager$searchDevicesAsync$1$2$2;
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                if (WifiTransferManager.INSTANCE.isHotspotEnabled()) {
                    this.$callback.invoke(mk0.a(false), "hotspot is opened", mk0.b(1009));
                    return zfb.a;
                }
                WifiManager wifiManager = this.this$0.mWifiManager;
                if (wifiManager != null && !wifiManager.isWifiEnabled()) {
                    rx5 rx5VarC3 = mc2.c();
                    C02611 c02611 = new C02611(this.$callback, null);
                    this.label = 1;
                    if (cl0.g(rx5VarC3, c02611, this) == objF) {
                        return objF;
                    }
                    return zfb.a;
                }
                this.this$0.checkCreateP2pAndChannel();
                if (this.this$0.channel != null) {
                    WifiTransferManager wifiTransferManager3 = this.this$0;
                    u74Var = this.$callback;
                    WifiP2pManager.Channel channel = wifiTransferManager3.channel;
                    y45.g(channel);
                    this.L$0 = wifiTransferManager3;
                    this.L$1 = u74Var;
                    this.label = 2;
                    Object objSearchWifiGroupAsync = wifiTransferManager3.searchWifiGroupAsync(channel, this);
                    if (objSearchWifiGroupAsync == objF) {
                        return objF;
                    }
                    wifiTransferManager = wifiTransferManager3;
                    obj2 = objSearchWifiGroupAsync;
                    rx5VarC = mc2.c();
                    wifiTransferManager$searchDevicesAsync$1$2$1 = new WifiTransferManager$searchDevicesAsync$1$2$1(u74Var, (WifiModel) obj2, null);
                    this.L$0 = wifiTransferManager;
                    this.L$1 = null;
                    this.label = 3;
                    if (cl0.g(rx5VarC, wifiTransferManager$searchDevicesAsync$1$2$1, this) == objF) {
                        return objF;
                    }
                    wifiTransferManager2 = wifiTransferManager;
                }
                return zfb.a;
            }
            if (i == 1) {
                c.b(obj);
                return zfb.a;
            }
            if (i == 2) {
                u74Var = (u74) this.L$1;
                wifiTransferManager = (WifiTransferManager) this.L$0;
                c.b(obj);
                obj2 = obj;
                rx5VarC = mc2.c();
                wifiTransferManager$searchDevicesAsync$1$2$1 = new WifiTransferManager$searchDevicesAsync$1$2$1(u74Var, (WifiModel) obj2, null);
                this.L$0 = wifiTransferManager;
                this.L$1 = null;
                this.label = 3;
                if (cl0.g(rx5VarC, wifiTransferManager$searchDevicesAsync$1$2$1, this) == objF) {
                    return objF;
                }
                wifiTransferManager2 = wifiTransferManager;
            } else if (i == 3) {
                WifiTransferManager wifiTransferManager4 = (WifiTransferManager) this.L$0;
                c.b(obj);
                wifiTransferManager2 = wifiTransferManager4;
            } else if (i == 4) {
                ref$ObjectRef = (Ref$ObjectRef) this.L$2;
                ref$ObjectRef2 = (Ref$ObjectRef) this.L$1;
                wifiTransferManager2 = (WifiTransferManager) this.L$0;
                c.b(obj);
                t = obj;
                ref$ObjectRef.element = t;
                rx5VarC2 = mc2.c();
                wifiTransferManager$searchDevicesAsync$1$2$2 = new WifiTransferManager$searchDevicesAsync$1$2$2(ref$ObjectRef2, wifiTransferManager2, null);
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 5;
                if (cl0.g(rx5VarC2, wifiTransferManager$searchDevicesAsync$1$2$2, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
            ref$ObjectRef = new Ref$ObjectRef();
            this.L$0 = wifiTransferManager2;
            this.L$1 = ref$ObjectRef;
            this.L$2 = ref$ObjectRef;
            this.label = 4;
            Object objRequestPeers = wifiTransferManager2.requestPeers(this);
            if (objRequestPeers == objF) {
                return objF;
            }
            ref$ObjectRef2 = ref$ObjectRef;
            t = objRequestPeers;
            ref$ObjectRef.element = t;
            rx5VarC2 = mc2.c();
            wifiTransferManager$searchDevicesAsync$1$2$2 = new WifiTransferManager$searchDevicesAsync$1$2$2(ref$ObjectRef2, wifiTransferManager2, null);
            this.L$0 = null;
            this.L$1 = null;
            this.L$2 = null;
            this.label = 5;
            if (cl0.g(rx5VarC2, wifiTransferManager$searchDevicesAsync$1$2$2, this) == objF) {
                return objF;
            }
            return zfb.a;
        }
    }

    public WifiTransferManager(Application application, DefaultConstructorMarker defaultConstructorMarker) {
        this(application);
    }

    public static final SocketData _init_$lambda$1(int i) {
        if (i == -28) {
            return new TransferSocketCodeData();
        }
        return null;
    }

    public static final zfb cancelTransfer$lambda$13(WifiTransferManager wifiTransferManager, int i) {
        wifiTransferManager.setConnectState(new ConnectedState(2, "cancelTransfer", i));
        if (i == 1) {
            wifiTransferManager.unRegisterClientListener();
        } else {
            wifiTransferManager.unRegisterServerListener();
        }
        return zfb.a;
    }

    public final void checkCreateP2pAndChannel() {
        WifiP2pManager.Channel channelInitialize = null;
        if (this.p2p == null) {
            Application application = this.context;
            Object systemService = application != null ? application.getSystemService("wifip2p") : null;
            y45.h(systemService, "null cannot be cast to non-null type android.net.wifi.p2p.WifiP2pManager");
            this.p2p = (WifiP2pManager) systemService;
        }
        if (this.channel == null) {
            WifiP2pManager wifiP2pManager = this.p2p;
            if (wifiP2pManager != null) {
                Application application2 = this.context;
                channelInitialize = wifiP2pManager.initialize(application2, application2.getMainLooper(), new WifiP2pManager.ChannelListener() {
                    @Override
                    public final void onChannelDisconnected() {
                        WifiTransferManager.checkCreateP2pAndChannel$lambda$11();
                    }
                });
            }
            this.channel = channelInitialize;
        }
    }

    public static final void checkCreateP2pAndChannel$lambda$11() {
    }

    public final boolean checkLegal() {
        return this.mWifiManager != null;
    }

    @RequiresApi(29)
    public final Object connectWifi(WifiP2pManager.Channel channel, WifiP2pDevice wifiP2pDevice, wh1<? super WifiModel> wh1Var) {
        Log.d("socket_debug", "WifiTransferManager_connectWifi");
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        final WifiModel wifiModel = new WifiModel("", false, 0, 0.0f, null, null, 0, 124, null);
        if (!checkPermission(this.context)) {
            wifiModel.setMessage("Permission not granted");
            wifiModel.setErrorCode(1001);
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(wifiModel));
        } else if (checkLegal()) {
            checkCreateP2pAndChannel();
            Log.d("socket_debug", "connectWifi_deviceAddress" + wifiP2pDevice.deviceAddress + "  " + wifiP2pDevice.deviceName);
            WifiP2pManager wifiP2pManager = this.p2p;
            if (wifiP2pManager != null) {
                wifiP2pManager.connect(channel, new WifiP2pConfig.Builder().setNetworkName(this.mSsid).setPassphrase(this.mPwd).enablePersistentMode(false).build(), new WifiP2pManager.ActionListener() {
                    @Override
                    public void onFailure(int reason) {
                        Log.d("socket_debug", "WifiTransferManager_connectWifi_fail");
                        wifiModel.setSuccess(false);
                        wifiModel.setMessage(String.valueOf(reason));
                        cr0 cr0Var = cancellableContinuationImpl;
                        Result.Companion companion = Result.INSTANCE;
                        cr0Var.resumeWith(Result.m279constructorimpl(wifiModel));
                    }

                    @Override
                    public void onSuccess() {
                        wifiModel.setSuccess(true);
                        cr0 cr0Var = cancellableContinuationImpl;
                        Result.Companion companion = Result.INSTANCE;
                        cr0Var.resumeWith(Result.m279constructorimpl(wifiModel));
                        Log.d("socket_debug", "WifiTransferManager_connectWifi_success");
                    }
                });
            }
        } else {
            wifiModel.setMessage("Object not legal");
            wifiModel.setErrorCode(1003);
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(wifiModel));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public static final zfb createGroupAsyncWithRetry$lambda$2(u74 u74Var, WifiTransferManager wifiTransferManager, boolean z, String str, int i) {
        y45.j(str, "reason");
        if (z) {
            u74Var.invoke(Boolean.TRUE, str, Integer.valueOf(i));
        } else {
            if (wifiTransferManager.createCount < wifiTransferManager.createRetryCount) {
                wifiTransferManager.createGroupAsyncWithRetry(u74Var);
            } else {
                u74Var.invoke(Boolean.FALSE, str, Integer.valueOf(i));
            }
            wifiTransferManager.createCount++;
        }
        return zfb.a;
    }

    @RequiresApi(29)
    public final Object createWifiGroup(WifiP2pManager.Channel channel, WifiP2pConfig wifiP2pConfig, wh1<? super WifiModel> wh1Var) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        final WifiModel wifiModel = new WifiModel("", false, 0, 0.0f, null, null, 0, 124, null);
        if (!checkPermission(this.context)) {
            wifiModel.setMessage("Permission not granted");
            wifiModel.setErrorCode(1001);
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(wifiModel));
        } else if (checkLegal()) {
            WifiP2pManager wifiP2pManager = this.p2p;
            if (wifiP2pManager != null) {
                wifiP2pManager.createGroup(channel, wifiP2pConfig, new WifiP2pManager.ActionListener() {
                    @Override
                    public void onFailure(int reason) {
                        Log.d("socket_debug", "WifiTransferManager_createWifiGroup_onFailure");
                        wifiModel.setSuccess(false);
                        wifiModel.setMessage(String.valueOf(reason));
                        wifiModel.setErrorCode(this.getSystemErrorCode(reason));
                        cr0 cr0Var = cancellableContinuationImpl;
                        Result.Companion companion = Result.INSTANCE;
                        cr0Var.resumeWith(Result.m279constructorimpl(wifiModel));
                    }

                    @Override
                    public void onSuccess() {
                        Log.d("socket_debug", "WifiTransferManager_createWifiGroup_onSuccess");
                        wifiModel.setSuccess(true);
                        cr0 cr0Var = cancellableContinuationImpl;
                        Result.Companion companion = Result.INSTANCE;
                        cr0Var.resumeWith(Result.m279constructorimpl(wifiModel));
                    }
                });
            }
        } else {
            wifiModel.setMessage("Object not legal");
            wifiModel.setErrorCode(1003);
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(wifiModel));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public final Object disconnect(WifiP2pManager.Channel channel, wh1<? super WifiModel> wh1Var) {
        Log.d("socket_debug", "WifiTransferManager_disconnect");
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        final WifiModel wifiModel = new WifiModel("", false, 0, 0.0f, null, null, 0, 124, null);
        checkCreateP2pAndChannel();
        WifiP2pManager wifiP2pManager = this.p2p;
        if (wifiP2pManager != null) {
            wifiP2pManager.cancelConnect(channel, new WifiP2pManager.ActionListener() {
                @Override
                public void onFailure(int reasonCode) {
                    wifiModel.setSuccess(false);
                    wifiModel.setMessage(String.valueOf(reasonCode));
                    wifiModel.setErrorCode(this.getSystemErrorCode(reasonCode));
                    cr0 cr0Var = cancellableContinuationImpl;
                    Result.Companion companion = Result.INSTANCE;
                    cr0Var.resumeWith(Result.m279constructorimpl(wifiModel));
                }

                @Override
                public void onSuccess() {
                    wifiModel.setSuccess(true);
                    cr0 cr0Var = cancellableContinuationImpl;
                    Result.Companion companion = Result.INSTANCE;
                    cr0Var.resumeWith(Result.m279constructorimpl(wifiModel));
                }
            });
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public final void doOnMainThread(c74 callback) {
        if (y45.e(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            callback.invoke();
        } else {
            el0.d(this.coroutineScope, mc2.c(), null, new C23891(callback, null), 2, null);
        }
    }

    public final Object getConnectionInfoInner(wh1<? super WifiP2pInfo> wh1Var) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        checkCreateP2pAndChannel();
        try {
            WifiP2pManager wifiP2pManager = this.p2p;
            if (wifiP2pManager != null) {
                wifiP2pManager.requestConnectionInfo(this.channel, new WifiP2pManager.ConnectionInfoListener() {
                    @Override
                    public final void onConnectionInfoAvailable(WifiP2pInfo wifiP2pInfo) {
                        cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(wifiP2pInfo));
                    }
                });
            }
        } catch (Exception unused) {
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(null));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public final int getSystemErrorCode(int code) {
        if (code == 0) {
            return 1004;
        }
        if (code != 1) {
            return code != 2 ? 1004 : 1006;
        }
        return 1005;
    }

    private final boolean isConnectedWifi() {
        Object systemService = this.context.getSystemService("connectivity");
        y45.h(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities != null) {
            return networkCapabilities.hasTransport(1);
        }
        return false;
    }

    private final void registerClientListener(VishaSocketClientListener listener) {
        ConnectClientManager.INSTANCE.setListener(listener);
    }

    private final void registerP2pConnectReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        this.filter = intentFilter;
        intentFilter.addAction("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
        try {
            Application application = this.context;
            AccessPointReceiver accessPointReceiver = this.p2pConnectReceiver;
            IntentFilter intentFilter2 = this.filter;
            y45.g(intentFilter2);
            ContextCompat.registerReceiver(application, accessPointReceiver, intentFilter2, 2);
        } catch (Exception unused) {
        }
    }

    private final void registerPeersReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        this.filter = intentFilter;
        intentFilter.addAction("android.net.wifi.p2p.PEERS_CHANGED");
        try {
            Application application = this.context;
            AccessPointReceiver accessPointReceiver = this.receiverDevices;
            IntentFilter intentFilter2 = this.filter;
            y45.g(intentFilter2);
            ContextCompat.registerReceiver(application, accessPointReceiver, intentFilter2, 2);
        } catch (Exception unused) {
        }
    }

    private final void registerServerListener(VishaSocketServerListener listener) {
        ConnectServerManager.INSTANCE.setListener(listener);
    }

    private final void registerServerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        this.filter = intentFilter;
        intentFilter.addAction("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
        try {
            Application application = this.context;
            AccessPointReceiver accessPointReceiver = this.serverReceiver;
            IntentFilter intentFilter2 = this.filter;
            y45.g(intentFilter2);
            ContextCompat.registerReceiver(application, accessPointReceiver, intentFilter2, 2);
        } catch (Exception unused) {
        }
    }

    public static final zfb release$lambda$6(boolean z, String str, int i) {
        y45.j(str, "<unused var>");
        return zfb.a;
    }

    private final void removeGroup() {
        Log.d("socket_debug", "WifiTransferManager_removeGroup");
        this.isCreateGroup = false;
        WifiP2pManager wifiP2pManager = this.p2p;
        if (wifiP2pManager != null) {
            wifiP2pManager.removeGroup(this.channel, new WifiP2pManager.ActionListener() {
                @Override
                public void onFailure(int reason) {
                    Log.d("socket_debug", "WifiTransferManager__removeGroup_onFailure");
                }

                @Override
                public void onSuccess() {
                    Log.d("socket_debug", "WifiTransferManager_removeGroup_onSuccess");
                }
            });
        }
    }

    public final Object removeWifiGroupAsync(WifiP2pManager.Channel channel, wh1<? super WifiModel> wh1Var) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        final WifiModel wifiModel = new WifiModel("", false, 0, 0.0f, null, null, 0, 124, null);
        WifiP2pManager wifiP2pManager = this.p2p;
        if (wifiP2pManager != null) {
            wifiP2pManager.removeGroup(channel, new WifiP2pManager.ActionListener() {
                @Override
                public void onFailure(int reason) {
                    wifiModel.setSuccess(false);
                    wifiModel.setErrorCode(this.getSystemErrorCode(reason));
                    wifiModel.setMessage("Failed to remove group, error code " + reason);
                    cr0 cr0Var = cancellableContinuationImpl;
                    Result.Companion companion = Result.INSTANCE;
                    cr0Var.resumeWith(Result.m279constructorimpl(wifiModel));
                }

                @Override
                public void onSuccess() {
                    wifiModel.setSuccess(true);
                    cr0 cr0Var = cancellableContinuationImpl;
                    Result.Companion companion = Result.INSTANCE;
                    cr0Var.resumeWith(Result.m279constructorimpl(wifiModel));
                }
            });
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public final Object requestConnectionInfo(wh1<? super WifiModel> wh1Var) {
        Log.d("socket_debug", "WifiTransferManager_requestConnectionInfo");
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        WifiP2pManager wifiP2pManager = this.p2p;
        if (wifiP2pManager != null) {
            wifiP2pManager.requestConnectionInfo(this.channel, new WifiP2pManager.ConnectionInfoListener() {
                @Override
                public final void onConnectionInfoAvailable(WifiP2pInfo wifiP2pInfo) {
                    String hostAddress;
                    InetAddress inetAddress;
                    WifiTransferManager wifiTransferManager = this.this$0;
                    if (wifiP2pInfo == null || (inetAddress = wifiP2pInfo.groupOwnerAddress) == null || (hostAddress = inetAddress.getHostAddress()) == null) {
                        hostAddress = "";
                    }
                    wifiTransferManager.setIpAddress(hostAddress);
                    if (this.this$0.getIpAddress().length() > 0) {
                        Object obj = this.this$0.connectLock;
                        WifiTransferManager wifiTransferManager2 = this.this$0;
                        synchronized (obj) {
                            Log.d("socket_debug", "WifiTransferManager_requestConnectionInfo_ipAddress:" + wifiTransferManager2.getIpAddress());
                            wifiTransferManager2.getIsConnected().set(true);
                            wifiTransferManager2.connectLock.notify();
                            zfb zfbVar = zfb.a;
                        }
                    }
                    WifiModel wifiModel = new WifiModel(null, false, 0, 0.0f, null, null, 0, 127, null);
                    wifiModel.setServiceIP(this.this$0.getIpAddress());
                    cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(wifiModel));
                }
            });
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public final Object requestPeers(wh1<? super List<? extends WifiP2pDevice>> wh1Var) {
        Log.d("socket_debug", "WifiTransferManager_requestPeers");
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        if (checkPermission(this.context)) {
            checkCreateP2pAndChannel();
            try {
                WifiP2pManager wifiP2pManager = this.p2p;
                if (wifiP2pManager != null) {
                    wifiP2pManager.requestPeers(this.channel, new WifiP2pManager.PeerListListener() {
                        @Override
                        public final void onPeersAvailable(WifiP2pDeviceList wifiP2pDeviceList) {
                            Log.d("socket_debug", "WifiTransferManager_requestPeers_callback");
                            Collection<WifiP2pDevice> deviceList = wifiP2pDeviceList.getDeviceList();
                            y45.i(deviceList, "getDeviceList(...)");
                            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(i81.b1(deviceList)));
                        }
                    });
                }
            } catch (Exception unused) {
                cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(null));
            }
        } else {
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(null));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public final Object searchWifiGroupAsync(WifiP2pManager.Channel channel, wh1<? super WifiModel> wh1Var) {
        Log.d("socket_debug", "WifiTransferManager_searchWifiGroupAsync");
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        final WifiModel wifiModel = new WifiModel("", false, 0, 0.0f, null, null, 0, 124, null);
        if (!checkPermission(this.context)) {
            wifiModel.setMessage("Permission not granted");
            wifiModel.setErrorCode(1001);
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(wifiModel));
        } else if (checkLegal()) {
            checkCreateP2pAndChannel();
            WifiP2pManager wifiP2pManager = this.p2p;
            if (wifiP2pManager != null) {
                wifiP2pManager.discoverPeers(channel, new WifiP2pManager.ActionListener() {
                    @Override
                    public void onFailure(int reasonCode) {
                        Log.d("socket_debug", "WifiTransferManager_searchDevicesAsync_onFailure");
                        wifiModel.setSuccess(false);
                        wifiModel.setMessage(String.valueOf(reasonCode));
                        wifiModel.setErrorCode(this.getSystemErrorCode(reasonCode));
                        cr0 cr0Var = cancellableContinuationImpl;
                        Result.Companion companion = Result.INSTANCE;
                        cr0Var.resumeWith(Result.m279constructorimpl(wifiModel));
                    }

                    @Override
                    public void onSuccess() {
                        Log.d("socket_debug", "WifiTransferManager_searchDevicesAsync_onSuccess");
                        wifiModel.setSuccess(true);
                        cr0 cr0Var = cancellableContinuationImpl;
                        Result.Companion companion = Result.INSTANCE;
                        cr0Var.resumeWith(Result.m279constructorimpl(wifiModel));
                    }
                });
            }
        } else {
            wifiModel.setMessage("Object not legal");
            wifiModel.setErrorCode(1003);
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(wifiModel));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public final void setConnectState(ConnectedState socketState) {
        if (this.mConnectState.getState() == socketState.getState()) {
            return;
        }
        this.mConnectState = new ConnectedState(socketState.getState(), socketState.getMessage(), -1);
    }

    private final void unRegisterClientListener() {
        ConnectClientManager.INSTANCE.setListener(null);
    }

    private final void unRegisterPeersReceiver() {
        try {
            this.context.unregisterReceiver(this.receiverDevices);
        } catch (Exception unused) {
        }
    }

    private final void unRegisterServerListener() {
        ConnectServerManager.INSTANCE.setListener(null);
    }

    @Override
    public void cancelTransfer(final int userType) {
        Log.d("socket_debug", "WifiTransferManager_cancelTransfer");
        if (this.mConnectState.getState() == 2) {
            return;
        }
        if (userType == 1) {
            ConnectClientManager.INSTANCE.release();
        } else {
            ConnectServerManager.INSTANCE.release();
        }
        doOnMainThread(new c74() {
            @Override
            public final Object invoke() {
                return WifiTransferManager.cancelTransfer$lambda$13(this.b, userType);
            }
        });
    }

    public final boolean checkPermission(Context context) {
        y45.j(context, "context");
        if (Build.VERSION.SDK_INT >= 33) {
            if (ContextCompat.checkSelfPermission(context, "android.permission.NEARBY_WIFI_DEVICES") != 0) {
                return false;
            }
        } else if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") != 0) {
            return false;
        }
        return true;
    }

    @Override
    @RequiresApi(29)
    public void connectAsync(WifiP2pDevice device, u74 callback) {
        y45.j(device, "device");
        y45.j(callback, "callback");
        Log.d("socket_debug", "WifiTransferManager_connectAsync");
        if (!checkLegal()) {
            callback.invoke(Boolean.FALSE, "Object not legal", 1003);
            return;
        }
        ConnectClientManager.INSTANCE.resetPercent();
        this.mIsStartSend = false;
        registerP2pConnectReceiver();
        el0.d(this.coroutineScope, mc2.b(), null, new AnonymousClass1(callback, device, null), 2, null);
    }

    @Override
    @RequiresApi(29)
    public void createGroupAsync(u74 callback) {
        y45.j(callback, "callback");
        if (!checkPermission(this.context)) {
            callback.invoke(Boolean.FALSE, "Permission not granted", 1001);
            return;
        }
        if (!checkLegal()) {
            callback.invoke(Boolean.FALSE, "Object not legal", 1003);
            return;
        }
        registerServerReceiver();
        ConnectServerManager.INSTANCE.resetPercent();
        this.mIsStartReceive = false;
        el0.d(this.coroutineScope, null, null, new C23871(callback, this, null), 3, null);
    }

    @Override
    @RequiresApi(29)
    public void createGroupAsyncWithRetry(final u74 callback) {
        y45.j(callback, "callback");
        this.createCount = 0;
        createGroupAsync(new u74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return WifiTransferManager.createGroupAsyncWithRetry$lambda$2(callback, this, ((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue());
            }
        });
    }

    @Override
    public void disconnectAsync(u74 callback) {
        y45.j(callback, "callback");
        Log.d("socket_debug", "WifiTransferManager_disconnectAsync");
        checkCreateP2pAndChannel();
        el0.d(this.coroutineScope, null, null, new C23881(callback, null), 3, null);
    }

    @Override
    public long getAverageSpeedPerSecond(boolean isClient) {
        return isClient ? ConnectClientManager.INSTANCE.getAverageSpeedPerSecond() : ConnectServerManager.INSTANCE.getAverageSpeedPerSecond();
    }

    @Override
    public ConnectedState getMConnectState() {
        return this.mConnectState;
    }

    @Override
    public void getConnectionInfoAsync(w74 callback) {
        y45.j(callback, "callback");
        Log.d("socket_debug", "WifiTransferManager_getConnectionInfoAsync");
        el0.d(this.coroutineScope, mc2.b(), null, new C23901(callback, null), 2, null);
    }

    public final String getIpAddress() {
        return this.ipAddress;
    }

    public final int getMUserType() {
        return this.mUserType;
    }

    @Override
    public long getRecentSpeedPerSecond(boolean isClient) {
        return isClient ? ConnectClientManager.INSTANCE.getRecentSpeedPerSecond() : ConnectServerManager.INSTANCE.getRecentSpeedPerSecond();
    }

    public final boolean getStarted() {
        return this.started;
    }

    @Override
    public int getTotalNum(boolean isClient) {
        return isClient ? ConnectClientManager.INSTANCE.getTransferTotalNum() : ConnectServerManager.INSTANCE.getTransferTotalNum();
    }

    @Override
    public long getTotalSize(boolean isClient) {
        return isClient ? ConnectClientManager.INSTANCE.getTransferTotalSize() : ConnectServerManager.INSTANCE.getTransferTotalSize();
    }

    public final AtomicBoolean getIsConnected() {
        return this.isConnected;
    }

    @Override
    public void registerListener(AccessReceiverActionListener listener, int userType) {
        y45.j(listener, "listener");
        List<AccessReceiverActionListener> list = this.mListeners;
        if (list != null) {
            list.add(listener);
        }
        this.mUserType = userType;
        if (userType == 1) {
            registerClientListener(this.socketClientListener);
        } else {
            registerServerListener(this.socketServerListener);
        }
    }

    @Override
    public void release(int userType) {
        try {
            Log.d("socket_debug", "WifiTransferManager_release");
            if (userType == 1) {
                unRegisterPeersReceiver();
                unregisterP2pConnectReceiver();
                disconnectAsync(new u74() {
                    @Override
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return WifiTransferManager.release$lambda$6(((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue());
                    }
                });
                ConnectClientManager.INSTANCE.release();
                unRegisterClientListener();
            } else {
                ConnectClientManager.INSTANCE.release();
                unRegisterServerReceiver();
                removeGroup();
                unRegisterServerListener();
            }
            d.f(this.coroutineScope, null, 1, null);
        } catch (Exception e) {
            Log.d(this.TAG, "Remove group error " + e);
        }
    }

    @Override
    public void removeGroupAsync(u74 callback) {
        y45.j(callback, "callback");
        Log.d("socket_debug", "WifiTransferManager_removeGroupAsync");
        el0.d(this.coroutineScope, null, null, new C23921(callback, null), 3, null);
    }

    @Override
    public void searchDevicesAsync(u74 callback) {
        y45.j(callback, "callback");
        Log.d("socket_debug", "WifiTransferManager_searchDevicesAsync");
        if (!checkLegal()) {
            callback.invoke(Boolean.FALSE, "Object not legal", 1003);
        } else {
            registerPeersReceiver();
            el0.d(this.coroutineScope, null, null, new C23931(callback, this, null), 3, null);
        }
    }

    @Override
    public void sendConversationToClient(Conversation conversation) {
        y45.j(conversation, "conversation");
        ConnectServerManager.INSTANCE.sendConversationToClient(conversation);
    }

    @Override
    public void sendConversationToService(Conversation conversation) {
        y45.j(conversation, "conversation");
        ConnectClientManager.INSTANCE.sendConversationToServer(conversation);
    }

    @Override
    public void sendFileDataToServerAsync(List<FileData> fileDataList) {
        y45.j(fileDataList, "fileDataList");
        ConnectClientManager.INSTANCE.sendFileDataToServer(fileDataList);
    }

    public final void setConnected(AtomicBoolean atomicBoolean) {
        y45.j(atomicBoolean, "<set-?>");
        this.isConnected = atomicBoolean;
    }

    public final void setIpAddress(String str) {
        y45.j(str, "<set-?>");
        this.ipAddress = str;
    }

    public final void setMUserType(int i) {
        this.mUserType = i;
    }

    public final void setStarted(boolean z) {
        this.started = z;
    }

    @Override
    public void unRegisterServerReceiver() {
        try {
            this.context.unregisterReceiver(this.serverReceiver);
        } catch (Exception unused) {
        }
    }

    @Override
    public void unregisterCallback(AccessReceiverActionListener accessReceiverActionListener) {
        y45.j(accessReceiverActionListener, "accessReceiverActionListener");
        try {
            List<AccessReceiverActionListener> list = this.mListeners;
            if (list != null) {
                list.remove(accessReceiverActionListener);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void unregisterP2pConnectReceiver() {
        try {
            this.context.unregisterReceiver(this.p2pConnectReceiver);
        } catch (Exception unused) {
        }
    }

    private WifiTransferManager(Application application) {
        this.context = application;
        this.TAG = "WifiDirectHelper";
        WifiTransferManager$special$$inlined$CoroutineExceptionHandler$1 wifiTransferManager$special$$inlined$CoroutineExceptionHandler$1 = new WifiTransferManager$special$$inlined$CoroutineExceptionHandler$1(hk1.w1, this);
        this.coroutineExceptionHandler = wifiTransferManager$special$$inlined$CoroutineExceptionHandler$1;
        this.coroutineScope = d.a(mc2.a().plus(v6a.b(null, 1, null)).plus(wifiTransferManager$special$$inlined$CoroutineExceptionHandler$1));
        this.isConnected = new AtomicBoolean(false);
        this.mSsid = "DIRECT-vs_xos";
        this.mPwd = "123456Qwe";
        this.mRetryCount = 3;
        this.connectLock = new Object();
        this.connnectTimeOut = RtspMediaSource.DEFAULT_TIMEOUT_MS;
        this.ipAddress = "";
        this.mUserType = -1;
        this.createRetryCount = 2;
        this.mConnectState = new ConnectedState(-1, Schema.DEFAULT_NAME, -1);
        this.mWifiManager = (WifiManager) application.getSystemService("wifi");
        SocketMain.init(application, new SocketMain.SocketDataCreator() {
            @Override
            public final SocketData creatorSocketData(int i) {
                return WifiTransferManager._init_$lambda$1(i);
            }
        });
        this.mListeners = new ArrayList();
        this.socketClientListener = new WifiTransferManager$socketClientListener$1(this);
        this.socketServerListener = new WifiTransferManager$socketServerListener$1(this);
        this.receiverDevices = new AccessPointReceiver(new WifiTransferManager$receiverDevices$1(this));
        this.serverReceiver = new AccessPointReceiver(new AccessReceiverActionListener() {
            @Override
            public void onConnectionChanged(NetworkInfo networkInfo, int userType) {
                Log.d("socket_debug", "WifiTransferManager_serverReceiver_onConnectionChanged");
                el0.d(this.this$0.coroutineScope, null, null, new WifiTransferManager$serverReceiver$1$onConnectionChanged$1(networkInfo, this.this$0, null), 3, null);
            }

            @Override
            public void onConversationMessage(Conversation conversation) {
                AccessReceiverActionListener.DefaultImpls.onConversationMessage(this, conversation);
            }

            @Override
            public void onError(WifiModel wifiModel) {
                AccessReceiverActionListener.DefaultImpls.onError(this, wifiModel);
            }

            @Override
            public void onFileTranslated(FileData fileData, int i) {
                AccessReceiverActionListener.DefaultImpls.onFileTranslated(this, fileData, i);
            }

            @Override
            public void onPeersAvailable(List<? extends WifiP2pDevice> devices) {
                y45.j(devices, "devices");
            }

            @Override
            public void onProgress(long j, long j2, int i, int i2) {
                AccessReceiverActionListener.DefaultImpls.onProgress(this, j, j2, i, i2);
            }

            @Override
            public void onTransferState(ConnectedState connectedState) {
                AccessReceiverActionListener.DefaultImpls.onTransferState(this, connectedState);
            }
        });
        this.p2pConnectReceiver = new AccessPointReceiver(new AccessReceiverActionListener() {
            @Override
            public void onConnectionChanged(NetworkInfo networkInfo, int userType) {
                el0.d(this.this$0.coroutineScope, null, null, new WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1(this.this$0, networkInfo, null), 3, null);
            }

            @Override
            public void onConversationMessage(Conversation conversation) {
                AccessReceiverActionListener.DefaultImpls.onConversationMessage(this, conversation);
            }

            @Override
            public void onError(WifiModel wifiModel) {
                AccessReceiverActionListener.DefaultImpls.onError(this, wifiModel);
            }

            @Override
            public void onFileTranslated(FileData fileData, int i) {
                AccessReceiverActionListener.DefaultImpls.onFileTranslated(this, fileData, i);
            }

            @Override
            public void onPeersAvailable(List<? extends WifiP2pDevice> devices) {
                y45.j(devices, "devices");
            }

            @Override
            public void onProgress(long j, long j2, int i, int i2) {
                AccessReceiverActionListener.DefaultImpls.onProgress(this, j, j2, i, i2);
            }

            @Override
            public void onTransferState(ConnectedState connectedState) {
                AccessReceiverActionListener.DefaultImpls.onTransferState(this, connectedState);
            }
        });
    }
}
