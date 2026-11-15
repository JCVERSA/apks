.class public final synthetic Ln68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lk78;


# direct methods
.method public synthetic constructor <init>(Lk78;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln68;->b:Lk78;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln68;->b:Lk78;

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0, p1}, Lk78;->h(Lk78;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
