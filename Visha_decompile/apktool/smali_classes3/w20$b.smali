.class public final Lw20$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lw20$b;

.field public static final b:Lvp3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw20$b;

    invoke-direct {v0}, Lw20$b;-><init>()V

    sput-object v0, Lw20$b;->a:Lw20$b;

    const-string v0, "messagingClientEvent"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$b;->b:Lvp3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lxn6;

    check-cast p2, Lzb7;

    invoke-virtual {p0, p1, p2}, Lw20$b;->b(Lxn6;Lzb7;)V

    return-void
.end method

.method public b(Lxn6;Lzb7;)V
    .locals 0

    sget-object p0, Lw20$b;->b:Lvp3;

    invoke-virtual {p1}, Lxn6;->a()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    return-void
.end method
