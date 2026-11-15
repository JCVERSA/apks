.class public final synthetic Lpw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/messaging/e$a;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/firebase/messaging/f$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpw3;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lpw3;->b:Ljava/lang/String;

    iput-object p3, p0, Lpw3;->c:Lcom/google/firebase/messaging/f$a;

    return-void
.end method


# virtual methods
.method public final start()Lxda;
    .locals 2

    iget-object v0, p0, Lpw3;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Lpw3;->b:Ljava/lang/String;

    iget-object p0, p0, Lpw3;->c:Lcom/google/firebase/messaging/f$a;

    invoke-static {v0, v1, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/f$a;)Lxda;

    move-result-object p0

    return-object p0
.end method
