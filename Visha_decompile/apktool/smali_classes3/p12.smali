.class public final synthetic Lp12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc1;


# instance fields
.field public final synthetic a:Lvk8;


# direct methods
.method public synthetic constructor <init>(Lvk8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp12;->a:Lvk8;

    return-void
.end method


# virtual methods
.method public final a(Lic1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp12;->a:Lvk8;

    invoke-static {p0, p1}, Lcom/google/firebase/heartbeatinfo/a;->e(Lvk8;Lic1;)Lcom/google/firebase/heartbeatinfo/a;

    move-result-object p0

    return-object p0
.end method
