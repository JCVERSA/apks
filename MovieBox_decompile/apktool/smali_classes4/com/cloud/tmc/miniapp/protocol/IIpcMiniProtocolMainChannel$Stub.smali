.class public abstract Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub;
.super Landroid/os/Binder;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel"

.field static final TRANSACTION_onMiniAppAbility:I = 0x3

.field static final TRANSACTION_onMiniAppDataSync:I = 0x2

.field static final TRANSACTION_onMiniAppExtra:I = 0x4

.field static final TRANSACTION_onMiniAppPerformance:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;
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
    const-string v0, "com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel"

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
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sput-object p0, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel"

    .line 4
    .line 5
    if-eq p1, v1, :cond_7

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq p1, v3, :cond_5

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    if-eq p1, v3, :cond_3

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    if-eq p1, v3, :cond_1

    .line 15
    .line 16
    const v0, 0x5f4e5446

    .line 17
    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    .line 49
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    move-object v0, p2

    .line 54
    check-cast v0, Landroid/os/Bundle;

    .line 55
    .line 56
    :cond_2
    invoke-interface {p0, p1, p4, v0}, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;->onMiniAppExtra(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    return v1

    .line 67
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    .line 86
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    move-object v0, p2

    .line 91
    check-cast v0, Landroid/os/Bundle;

    .line 92
    .line 93
    :cond_4
    invoke-interface {p0, p1, p4, v0}, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;->onMiniAppAbility(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    .line 102
    .line 103
    return v1

    .line 104
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 122
    .line 123
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    move-object v0, p2

    .line 128
    check-cast v0, Landroid/os/Bundle;

    .line 129
    .line 130
    :cond_6
    invoke-interface {p0, p1, p4, v0}, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;->onMiniAppDataSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    .line 139
    .line 140
    return v1

    .line 141
    :cond_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_8

    .line 157
    .line 158
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    .line 160
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    move-object v0, p2

    .line 165
    check-cast v0, Landroid/os/Bundle;

    .line 166
    .line 167
    :cond_8
    invoke-interface {p0, p1, p4, v0}, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;->onMiniAppPerformance(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    .line 176
    .line 177
    return v1
.end method
