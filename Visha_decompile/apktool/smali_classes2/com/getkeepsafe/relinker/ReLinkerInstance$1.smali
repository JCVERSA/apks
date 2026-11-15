.class Lcom/getkeepsafe/relinker/ReLinkerInstance$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/relinker/ReLinkerInstance;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getkeepsafe/relinker/ReLinkerInstance;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$library:Ljava/lang/String;

.field final synthetic val$listener:Lcom/getkeepsafe/relinker/b$c;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->this$0:Lcom/getkeepsafe/relinker/ReLinkerInstance;

    iput-object p2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$library:Ljava/lang/String;

    iput-object p4, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->this$0:Lcom/getkeepsafe/relinker/ReLinkerInstance;

    iget-object v2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$library:Ljava/lang/String;

    iget-object p0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$version:Ljava/lang/String;

    invoke-static {v1, v2, v3, p0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->a(Lcom/getkeepsafe/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/getkeepsafe/relinker/MissingLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :catch_0
    throw v0

    :catch_1
    throw v0
.end method
