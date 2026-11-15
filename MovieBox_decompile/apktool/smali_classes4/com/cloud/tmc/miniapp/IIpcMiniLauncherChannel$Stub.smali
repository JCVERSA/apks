.class public abstract Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub;
.super Landroid/os/Binder;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cloud.tmc.miniapp.IIpcMiniLauncherChannel"

.field public static final TRANSACTION_launchHostProcess:I = 0x6

.field public static final TRANSACTION_launcherMiniApp:I = 0x1

.field public static final TRANSACTION_preLauncherData:I = 0x3

.field public static final TRANSACTION_registerMiniAppLifecycleListener:I = 0x8

.field public static final TRANSACTION_syncLauncherLifecycletoMiniapp:I = 0x5

.field public static final TRANSACTION_syncLauncherNewsData:I = 0x7

.field public static final TRANSACTION_updateLauncherData:I = 0x4

.field public static final TRANSACTION_warmupWebview:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.cloud.tmc.miniapp.IIpcMiniLauncherChannel"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.cloud.tmc.miniapp.IIpcMiniLauncherChannel"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sput-object p0, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "setDefaultImpl() called twice"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const-string v2, "com.cloud.tmc.miniapp.IIpcMiniLauncherChannel"

    .line 6
    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p0, p1}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->registerMiniAppLifecycleListener(Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    if-eqz p4, :cond_0

    .line 52
    .line 53
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    .line 55
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    move-object v0, p2

    .line 60
    check-cast v0, Landroid/os/Bundle;

    .line 61
    .line 62
    :cond_0
    invoke-interface {p0, p1, v0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->syncLauncherNewsData(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->launchHostProcess()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    return v1

    .line 87
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-interface {p0, p1, p2}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->syncLauncherLifecycletoMiniapp(II)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    .line 107
    .line 108
    return v1

    .line 109
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-interface {p0, p1, p2}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->updateLauncherData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    .line 129
    .line 130
    return v1

    .line 131
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 139
    .line 140
    .line 141
    move-result p4

    .line 142
    if-eqz p4, :cond_1

    .line 143
    .line 144
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 145
    .line 146
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    move-object v0, p2

    .line 151
    check-cast v0, Landroid/os/Bundle;

    .line 152
    .line 153
    :cond_1
    invoke-interface {p0, p1, v0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->preLauncherData(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    .line 162
    .line 163
    return v1

    .line 164
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_2

    .line 172
    .line 173
    move p1, v1

    .line 174
    goto :goto_0

    .line 175
    :cond_2
    const/4 p1, 0x0

    .line 176
    :goto_0
    invoke-interface {p0, p1}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->warmupWebview(Z)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    .line 185
    .line 186
    return v1

    .line 187
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 195
    .line 196
    .line 197
    move-result p4

    .line 198
    if-eqz p4, :cond_3

    .line 199
    .line 200
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 201
    .line 202
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    move-object v0, p2

    .line 207
    check-cast v0, Landroid/os/Bundle;

    .line 208
    .line 209
    :cond_3
    invoke-interface {p0, p1, v0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->launcherMiniApp(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    .line 218
    .line 219
    return v1

    .line 220
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return v1

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
