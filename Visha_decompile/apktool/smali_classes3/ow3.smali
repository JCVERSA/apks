.class public final synthetic Low3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic c:Lzda;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Low3;->b:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Low3;->c:Lzda;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Low3;->b:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object p0, p0, Low3;->c:Lzda;

    invoke-static {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->c(Lcom/google/firebase/messaging/FirebaseMessaging;Lzda;)V

    return-void
.end method
