.class public Lkfc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgec$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkfc;->p(Lmc7;Lkfc$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmc7;

.field public final synthetic b:Lkfc$d;


# direct methods
.method public constructor <init>(Lmc7;Lkfc$d;)V
    .locals 0

    iput-object p1, p0, Lkfc$b;->a:Lmc7;

    iput-object p2, p0, Lkfc$b;->b:Lkfc$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/VishaOauthData;)V
    .locals 0

    iget-object p1, p0, Lkfc$b;->a:Lmc7;

    iget-object p0, p0, Lkfc$b;->b:Lkfc$d;

    invoke-static {p1, p0}, Lkfc;->b(Lmc7;Lkfc$d;)V

    return-void
.end method
