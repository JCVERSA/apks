.class public final synthetic Ltg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltg5;->b:Landroid/content/Context;

    iput-object p2, p0, Ltg5;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onOxygenBusServerStateChange(I)V
    .locals 1

    iget-object v0, p0, Ltg5;->b:Landroid/content/Context;

    iget-object p0, p0, Ltg5;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->e(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
