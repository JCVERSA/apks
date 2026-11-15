.class public final synthetic Lxxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxxa;->a:Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;

    return-void
.end method


# virtual methods
.method public final packageDeleted(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lxxa;->a:Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->a(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;Ljava/lang/String;I)V

    return-void
.end method
