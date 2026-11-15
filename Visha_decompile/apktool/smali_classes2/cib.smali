.class public final synthetic Lcib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8a$a;


# instance fields
.field public final synthetic a:Lkib;

.field public final synthetic b:La9b;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lkib;La9b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcib;->a:Lkib;

    iput-object p2, p0, Lcib;->b:La9b;

    iput p3, p0, Lcib;->c:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcib;->a:Lkib;

    iget-object v1, p0, Lcib;->b:La9b;

    iget p0, p0, Lcib;->c:I

    invoke-static {v0, v1, p0}, Lkib;->f(Lkib;La9b;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
