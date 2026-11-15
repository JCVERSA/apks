.class public final synthetic Li9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li9;->b:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Li9;->b:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Ll9;->a(Lcom/transsion/dbdata/beans/NewFeatureAdvertise;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
