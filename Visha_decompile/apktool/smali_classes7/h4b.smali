.class public final synthetic Lh4b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iput-object p2, p0, Lh4b;->b:Ljava/lang/String;

    iput-object p3, p0, Lh4b;->c:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;

    iput p4, p0, Lh4b;->d:I

    iput p5, p0, Lh4b;->e:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lh4b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iget-object v1, p0, Lh4b;->b:Ljava/lang/String;

    iget-object v2, p0, Lh4b;->c:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;

    iget v3, p0, Lh4b;->d:I

    iget p0, p0, Lh4b;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->i(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
