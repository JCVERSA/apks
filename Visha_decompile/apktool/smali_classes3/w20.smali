.class public final Lw20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw20$c;,
        Lw20$b;,
        Lw20$a;
    }
.end annotation


# static fields
.field public static final a:Lze1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw20;

    invoke-direct {v0}, Lw20;-><init>()V

    sput-object v0, Lw20;->a:Lze1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfa3;)V
    .locals 1

    const-class p0, Ldj8;

    sget-object v0, Lw20$c;->a:Lw20$c;

    invoke-interface {p1, p0, v0}, Lfa3;->a(Ljava/lang/Class;Lyb7;)Lfa3;

    const-class p0, Lxn6;

    sget-object v0, Lw20$b;->a:Lw20$b;

    invoke-interface {p1, p0, v0}, Lfa3;->a(Ljava/lang/Class;Lyb7;)Lfa3;

    const-class p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    sget-object v0, Lw20$a;->a:Lw20$a;

    invoke-interface {p1, p0, v0}, Lfa3;->a(Ljava/lang/Class;Lyb7;)Lfa3;

    return-void
.end method
