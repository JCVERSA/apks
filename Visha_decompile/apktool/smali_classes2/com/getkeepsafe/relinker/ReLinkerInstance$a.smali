.class public Lcom/getkeepsafe/relinker/ReLinkerInstance$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/relinker/ReLinkerInstance;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/getkeepsafe/relinker/ReLinkerInstance;


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/relinker/ReLinkerInstance;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$a;->c:Lcom/getkeepsafe/relinker/ReLinkerInstance;

    iput-object p2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
