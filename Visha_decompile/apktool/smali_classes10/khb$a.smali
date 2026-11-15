.class public Lkhb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkhb$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkhb;->b(Ljava/io/File;)Lorg/chromium/net/UploadDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lkhb$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/nio/channels/FileChannel;
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    iget-object p0, p0, Lkhb$a;->a:Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method
