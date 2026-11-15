.class public final synthetic Lzr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/zip/ZipInputStream;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzr5;->b:Landroid/content/Context;

    iput-object p2, p0, Lzr5;->c:Ljava/util/zip/ZipInputStream;

    iput-object p3, p0, Lzr5;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lzr5;->b:Landroid/content/Context;

    iget-object v1, p0, Lzr5;->c:Ljava/util/zip/ZipInputStream;

    iget-object p0, p0, Lzr5;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lfs5;->i(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ljt5;

    move-result-object p0

    return-object p0
.end method
