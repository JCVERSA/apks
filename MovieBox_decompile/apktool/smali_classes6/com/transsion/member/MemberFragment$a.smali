.class public final Lcom/transsion/member/MemberFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/MemberFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/memberapi/MemberSource;Ljava/lang/String;)Lcom/transsion/member/MemberFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/member/MemberFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/member/MemberFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/transsion/member/MemberFragment;->s1(Lcom/transsion/memberapi/MemberSource;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/transsion/member/MemberFragment;->o1(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
