.class public final synthetic Lsg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg5;->b:Landroid/content/Context;

    iput-object p2, p0, Lsg5;->c:Ljava/util/Map;

    iput-object p3, p0, Lsg5;->d:Ljava/lang/String;

    iput-object p4, p0, Lsg5;->e:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lsg5;->b:Landroid/content/Context;

    iget-object v1, p0, Lsg5;->c:Ljava/util/Map;

    iget-object v2, p0, Lsg5;->d:Ljava/lang/String;

    iget-object p0, p0, Lsg5;->e:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->f(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    return-void
.end method
