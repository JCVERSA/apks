.class public final synthetic Lr6b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lt6b;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lt6b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6b;->b:Lt6b;

    iput-object p2, p0, Lr6b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr6b;->b:Lt6b;

    iget-object p0, p0, Lr6b;->c:Ljava/lang/String;

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0, p0, p1}, Lt6b;->b(Lt6b;Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
