.class public final Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;,
        Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;,
        Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;,
        Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    }
.end annotation


# static fields
.field private static final p:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field private final e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:J

.field private final l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

.field private final m:Ljava/lang/String;

.field private final n:J

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->a()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->p:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->a:J

    move-object v1, p3

    .line 3
    iput-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->b:Ljava/lang/String;

    move-object v1, p4

    .line 4
    iput-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->c:Ljava/lang/String;

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->f:Ljava/lang/String;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->g:Ljava/lang/String;

    move v1, p9

    .line 9
    iput v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->h:I

    move v1, p10

    .line 10
    iput v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->i:I

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->j:Ljava/lang/String;

    move-wide v1, p12

    .line 12
    iput-wide v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->k:J

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->m:Ljava/lang/String;

    move-wide/from16 v1, p16

    .line 15
    iput-wide v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->n:J

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->o:Ljava/lang/String;

    return-void
.end method

.method public static p()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public m()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->i:I

    .line 2
    .line 3
    return v0
.end method
