.class public final Lxn6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxn6$a;
    }
.end annotation


# static fields
.field public static final b:Lxn6;


# instance fields
.field public final a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxn6$a;

    invoke-direct {v0}, Lxn6$a;-><init>()V

    invoke-virtual {v0}, Lxn6$a;->a()Lxn6;

    move-result-object v0

    sput-object v0, Lxn6;->b:Lxn6;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxn6;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-void
.end method

.method public static b()Lxn6$a;
    .locals 1

    new-instance v0, Lxn6$a;

    invoke-direct {v0}, Lxn6$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 0

    iget-object p0, p0, Lxn6;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-object p0
.end method

.method public c()[B
    .locals 0

    invoke-static {p0}, Ldj8;->a(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
