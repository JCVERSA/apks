.class public final synthetic Lik5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->a()Lcom/transsion/letswitch/service/api/internal/FileOperation;

    move-result-object p0

    return-object p0
.end method
