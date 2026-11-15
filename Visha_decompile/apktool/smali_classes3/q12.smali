.class public final synthetic Lq12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpj8;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq12;->a:Landroid/content/Context;

    iput-object p2, p0, Lq12;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq12;->a:Landroid/content/Context;

    iget-object p0, p0, Lq12;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/firebase/heartbeatinfo/a;->d(Landroid/content/Context;Ljava/lang/String;)Lep4;

    move-result-object p0

    return-object p0
.end method
