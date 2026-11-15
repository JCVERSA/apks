.class public abstract Lkotlin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lkotlin/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static final b(Lou1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lqu1;

    invoke-virtual {p0}, Lou1;->a()Lu74;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lqu1;-><init>(Lu74;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lqu1;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
