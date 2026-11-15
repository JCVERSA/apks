.class public final synthetic Ldt8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxh1;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/e;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldt8;->a:Lcom/google/firebase/messaging/e;

    iput-object p2, p0, Ldt8;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lxda;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldt8;->a:Lcom/google/firebase/messaging/e;

    iget-object p0, p0, Ldt8;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/messaging/e;->a(Lcom/google/firebase/messaging/e;Ljava/lang/String;Lxda;)Lxda;

    move-result-object p0

    return-object p0
.end method
