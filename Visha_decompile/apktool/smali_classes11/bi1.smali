.class public final synthetic Lbi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ldi1;


# direct methods
.method public synthetic constructor <init>(Ldi1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi1;->b:Ldi1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbi1;->b:Ldi1;

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Ldi1;->a(Ldi1;Landroid/content/Context;)Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;

    move-result-object p0

    return-object p0
.end method
