.class public final synthetic Ldv/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/kids/KidsProfile;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/kids/KidsProfile;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldv/p;->a:Lcom/transsion/baselib/kids/KidsProfile;

    .line 5
    .line 6
    iput-object p2, p0, Ldv/p;->b:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ldv/p;->a:Lcom/transsion/baselib/kids/KidsProfile;

    .line 2
    .line 3
    iget-object v1, p0, Ldv/p;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->e0(Lcom/transsion/baselib/kids/KidsProfile;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
