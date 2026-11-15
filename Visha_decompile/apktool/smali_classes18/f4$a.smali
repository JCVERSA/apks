.class public Lf4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf4;-><init>(Lvx9;Lxt1;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILyt9;Lt6a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lvx9;

.field public final synthetic c:Lt6a;

.field public final synthetic d:Lf4;


# direct methods
.method public constructor <init>(Lf4;Lvx9;Lt6a;)V
    .locals 0

    iput-object p1, p0, Lf4$a;->d:Lf4;

    iput-object p2, p0, Lf4$a;->b:Lvx9;

    iput-object p3, p0, Lf4$a;->c:Lt6a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lsbb;
    .locals 3

    new-instance v0, Lf4$c;

    iget-object v1, p0, Lf4$a;->d:Lf4;

    iget-object v2, p0, Lf4$a;->b:Lvx9;

    iget-object p0, p0, Lf4$a;->c:Lt6a;

    invoke-direct {v0, v1, v2, p0}, Lf4$c;-><init>(Lf4;Lvx9;Lt6a;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf4$a;->a()Lsbb;

    move-result-object p0

    return-object p0
.end method
