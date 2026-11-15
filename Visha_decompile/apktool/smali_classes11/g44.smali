.class public final synthetic Lg44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg44;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lg44;->b:Ljava/util/List;

    check-cast p1, Lcom/transsion/dbdata/beans/appconfig/FormatCopyrightBeans;

    invoke-static {p0, p1}, Li44;->b(Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/FormatCopyrightBeans;)V

    return-void
.end method
