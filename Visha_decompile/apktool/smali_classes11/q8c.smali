.class public final synthetic Lq8c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8c;->b:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lq8c;->b:[I

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->b([ILcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    return-void
.end method
