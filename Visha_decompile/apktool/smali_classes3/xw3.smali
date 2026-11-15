.class public final synthetic Lxw3;
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

    iput-object p1, p0, Lxw3;->a:Lvk8;

    return-void
.end method


# virtual methods
.method public final a(Lic1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lxw3;->a:Lvk8;

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->a(Lvk8;Lic1;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method
