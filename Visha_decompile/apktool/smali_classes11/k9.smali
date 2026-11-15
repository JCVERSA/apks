.class public final synthetic Lk9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Ll9$b;


# direct methods
.method public synthetic constructor <init>(Ll9$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk9;->b:Ll9$b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lk9;->b:Ll9$b;

    check-cast p1, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-static {p0, p1}, Ll9;->b(Ll9$b;Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V

    return-void
.end method
