.class public final Lw20$a;
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
    name = "a"
.end annotation


# static fields
.field public static final a:Lw20$a;

.field public static final b:Lvp3;

.field public static final c:Lvp3;

.field public static final d:Lvp3;

.field public static final e:Lvp3;

.field public static final f:Lvp3;

.field public static final g:Lvp3;

.field public static final h:Lvp3;

.field public static final i:Lvp3;

.field public static final j:Lvp3;

.field public static final k:Lvp3;

.field public static final l:Lvp3;

.field public static final m:Lvp3;

.field public static final n:Lvp3;

.field public static final o:Lvp3;

.field public static final p:Lvp3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw20$a;

    invoke-direct {v0}, Lw20$a;-><init>()V

    sput-object v0, Lw20$a;->a:Lw20$a;

    const-string v0, "projectNumber"

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

    sput-object v0, Lw20$a;->b:Lvp3;

    const-string v0, "messageId"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->c:Lvp3;

    const-string v0, "instanceId"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->d:Lvp3;

    const-string v0, "messageType"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->e:Lvp3;

    const-string v0, "sdkPlatform"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->f:Lvp3;

    const-string v0, "packageName"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->g:Lvp3;

    const-string v0, "collapseKey"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->h:Lvp3;

    const-string v0, "priority"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->i:Lvp3;

    const-string v0, "ttl"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->j:Lvp3;

    const-string v0, "topic"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->k:Lvp3;

    const-string v0, "bulkId"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->l:Lvp3;

    const-string v0, "event"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->m:Lvp3;

    const-string v0, "analyticsLabel"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->n:Lvp3;

    const-string v0, "campaignId"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->o:Lvp3;

    const-string v0, "composerLabel"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lw20$a;->p:Lvp3;

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

    check-cast p1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    check-cast p2, Lzb7;

    invoke-virtual {p0, p1, p2}, Lw20$a;->b(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;Lzb7;)V

    return-void
.end method

.method public b(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;Lzb7;)V
    .locals 2

    sget-object p0, Lw20$a;->b:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->l()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lzb7;->d(Lvp3;J)Lzb7;

    sget-object p0, Lw20$a;->c:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lw20$a;->d:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lw20$a;->e:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->i()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lw20$a;->f:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->m()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lw20$a;->g:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lw20$a;->h:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lw20$a;->i:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->k()I

    move-result v0

    invoke-interface {p2, p0, v0}, Lzb7;->c(Lvp3;I)Lzb7;

    sget-object p0, Lw20$a;->j:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->o()I

    move-result v0

    invoke-interface {p2, p0, v0}, Lzb7;->c(Lvp3;I)Lzb7;

    sget-object p0, Lw20$a;->k:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->n()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lw20$a;->l:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->b()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lzb7;->d(Lvp3;J)Lzb7;

    sget-object p0, Lw20$a;->m:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->f()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lw20$a;->n:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lw20$a;->o:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->c()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lzb7;->d(Lvp3;J)Lzb7;

    sget-object p0, Lw20$a;->p:Lvp3;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    return-void
.end method
