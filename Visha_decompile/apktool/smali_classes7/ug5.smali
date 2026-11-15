.class public final synthetic Lug5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lug5;->b:Ljava/lang/String;

    iput-object p2, p0, Lug5;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lug5;->b:Ljava/lang/String;

    iget-object p0, p0, Lug5;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->c(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
