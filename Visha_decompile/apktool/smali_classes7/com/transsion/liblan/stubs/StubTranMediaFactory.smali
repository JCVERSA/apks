.class public Lcom/transsion/liblan/stubs/StubTranMediaFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranMediaFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaFromAssetFileDescriptor(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/content/res/AssetFileDescriptor;)Lcom/transsion/liblan/interfaces/ITranMedia;
    .locals 0

    new-instance p0, Lcom/transsion/liblan/stubs/StubTranMedia;

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/stubs/StubTranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/content/res/AssetFileDescriptor;)V

    return-object p0
.end method

.method public getMediaFromFileDescriptor(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/io/FileDescriptor;)Lcom/transsion/liblan/interfaces/ITranMedia;
    .locals 0

    new-instance p0, Lcom/transsion/liblan/stubs/StubTranMedia;

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/stubs/StubTranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/io/FileDescriptor;)V

    return-object p0
.end method

.method public getMediaFromLocal(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)Lcom/transsion/liblan/interfaces/ITranMedia;
    .locals 0

    new-instance p0, Lcom/transsion/liblan/stubs/StubTranMedia;

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/stubs/StubTranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V

    return-object p0
.end method

.method public getMediaFromUri(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/net/Uri;)Lcom/transsion/liblan/interfaces/ITranMedia;
    .locals 0

    new-instance p0, Lcom/transsion/liblan/stubs/StubTranMedia;

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/stubs/StubTranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/net/Uri;)V

    return-object p0
.end method
