.class public final synthetic Lp68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp68;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp68;->b:Ljava/lang/String;

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0, p1}, Lk78;->i(Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
