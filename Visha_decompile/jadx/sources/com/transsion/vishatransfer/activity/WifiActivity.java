package com.transsion.vishatransfer.activity;

import android.app.Activity;
import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pDevice;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.vishatransfer.R;
import com.transsion.vishatransfer.data.ConnectedState;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.DeviceInfo;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.data.WifiModel;
import com.transsion.vishatransfer.manager.ITransferHelper;
import com.transsion.vishatransfer.manager.TransferManager;
import com.transsion.vishatransfer.manager.callback.AccessReceiverActionListener;
import defpackage.se;
import defpackage.u74;
import defpackage.zfb;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class WifiActivity extends Activity {
    private List<WifiP2pDevice> wifiP2pDevices;

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        final ITransferHelper transferManager = TransferManager.INSTANCE.getInstance(se.a(), 1);
        setContentView(R.layout.layout_wifi);
        transferManager.registerListener(new AccessReceiverActionListener() {
            @Override
            public void onConnectionChanged(@Nullable NetworkInfo networkInfo, int i) {
                Log.e("socket_debug", "client onConnectionChanged");
            }

            @Override
            public void onConversationMessage(@NonNull Conversation conversation) {
                Log.e("socket_debug", "conversation_" + conversation.getType());
            }

            @Override
            public void onError(@NonNull WifiModel wifiModel) {
            }

            @Override
            public void onFileTranslated(@NonNull FileData fileData, int i) {
            }

            @Override
            public void onPeersAvailable(@NonNull List<? extends WifiP2pDevice> list) {
                WifiActivity.this.wifiP2pDevices = list;
            }

            @Override
            public void onProgress(long j, long j2, int i, int i2) {
            }

            @Override
            public void onTransferState(@NonNull ConnectedState connectedState) {
            }
        }, 1);
        transferManager.registerListener(new AccessReceiverActionListener() {
            @Override
            public void onConnectionChanged(@Nullable NetworkInfo networkInfo, int i) {
                Log.e("socket_debug", "server onConnectionChanged");
            }

            @Override
            public void onConversationMessage(@NonNull Conversation conversation) {
                Log.e("socket_debug", "conversation_" + conversation.getType());
            }

            @Override
            public void onError(@NonNull WifiModel wifiModel) {
                Log.e("socket_debug", "server error");
            }

            @Override
            public void onFileTranslated(@NonNull FileData fileData, int i) {
            }

            @Override
            public void onPeersAvailable(@NonNull List<? extends WifiP2pDevice> list) {
                WifiActivity.this.wifiP2pDevices = list;
            }

            @Override
            public void onProgress(long j, long j2, int i, int i2) {
                Log.e("socket_debug", "totalSize = " + j + " transferedSize = " + j2 + " fileNum = " + i + "");
            }

            @Override
            public void onTransferState(@NonNull ConnectedState connectedState) {
            }
        }, 2);
        findViewById(R.id.btn_create_wifi_group).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                transferManager.createGroupAsyncWithRetry(new u74() {
                    @Override
                    public zfb invoke(Boolean bool, String str, Integer num) {
                        return null;
                    }
                });
            }
        });
        findViewById(R.id.btn_remove_group).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                transferManager.removeGroupAsync(new u74() {
                    @Override
                    public zfb invoke(Boolean bool, String str, Integer num) {
                        return null;
                    }
                });
            }
        });
        findViewById(R.id.btn_search_devices).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                transferManager.searchDevicesAsync(new u74() {
                    @Override
                    public zfb invoke(Boolean bool, String str, Integer num) {
                        return null;
                    }
                });
            }
        });
        findViewById(R.id.btn_connect).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (WifiActivity.this.wifiP2pDevices == null || WifiActivity.this.wifiP2pDevices.size() == 0) {
                    return;
                }
                WifiP2pDevice wifiP2pDevice = (WifiP2pDevice) WifiActivity.this.wifiP2pDevices.get(0);
                for (WifiP2pDevice wifiP2pDevice2 : WifiActivity.this.wifiP2pDevices) {
                    if (wifiP2pDevice2.deviceName.equals("TECNO PHANTOM V Flip2 5G22222233") || wifiP2pDevice2.deviceName.equals("Infinix NOTE 40 Pro11111")) {
                        wifiP2pDevice = wifiP2pDevice2;
                    }
                }
                transferManager.connectAsync(wifiP2pDevice, new u74() {
                    @Override
                    public zfb invoke(Boolean bool, String str, Integer num) {
                        return null;
                    }
                });
            }
        });
        findViewById(R.id.btn_disconnect).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                transferManager.disconnectAsync(new u74() {
                    @Override
                    public zfb invoke(Boolean bool, String str, Integer num) {
                        return null;
                    }
                });
            }
        });
        findViewById(R.id.btn_sendDataToServer).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                File externalStorageDirectory = Environment.getExternalStorageDirectory();
                FileData fileData = new FileData();
                fileData.setPath("/storage/emulated/0/Movies/20240805/法语识别法语/學法文___Extra_French___L_arrivée_de_Sam_(1_13)_-_看影片學法文.mp4");
                fileData.setReceivePath(externalStorageDirectory.getAbsolutePath() + "/test1233211.mp4");
                fileData.setCover(true);
                FileData fileData2 = new FileData();
                fileData2.setPath("/storage/emulated/0/Movies/20240805/法语识别法语/學法文___Extra_French___L_arrivée_de_Sam_(1_13)_-_看影片學法文.mp4");
                fileData2.setReceivePath(externalStorageDirectory.getAbsolutePath() + "/test1233212.mp4");
                fileData2.setCover(true);
                ArrayList arrayList = new ArrayList();
                FileData fileData3 = new FileData();
                fileData3.setPath("/storage/emulated/0/Movies/20240805/法语识别法语/學法文___Extra_French___L_arrivée_de_Sam_(1_13)_-_看影片學法文.mp4");
                fileData3.setReceivePath(externalStorageDirectory.getAbsolutePath() + "/test1233212.mp4");
                fileData3.setCover(true);
                arrayList.add(fileData);
                arrayList.add(fileData);
                arrayList.add(fileData2);
                arrayList.add(fileData3);
                for (int i = 0; i < 10; i++) {
                    FileData fileData4 = new FileData();
                    fileData4.setPath("/storage/emulated/0/Movies/20240805/法语识别法语/學法文___Extra_French___L_arrivée_de_Sam_(1_13)_-_看影片學法文.mp4");
                    fileData4.setReceivePath(externalStorageDirectory.getAbsolutePath() + "/test1233212+" + i + "+.mp4");
                    fileData4.setCover(true);
                    arrayList.add(fileData4);
                }
                transferManager.sendFileDataToServerAsync(arrayList);
            }
        });
        findViewById(R.id.btn_send_coversation_to_service).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                transferManager.sendConversationToService(new Conversation(5, 0L, false, 0, 0, new DeviceInfo()));
            }
        });
        findViewById(R.id.btn_send_coversation_to_client).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                transferManager.sendConversationToClient(new Conversation(0, 0L, false, 0, 0, new DeviceInfo()));
            }
        });
        findViewById(R.id.btn_getConnectInfo).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
            }
        });
    }
}
