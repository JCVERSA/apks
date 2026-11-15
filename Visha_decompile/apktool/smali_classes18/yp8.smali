.class public final Lyp8;
.super Lqp8;
.source "SourceFile"

# interfaces
.implements Ly65;


# instance fields
.field public final c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lby6;Ljava/lang/Class;)V
    .locals 1

    const-string v0, "klass"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lqp8;-><init>(Lby6;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lyp8;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public c()Lo85;
    .locals 1

    sget-object v0, Llq8;->a:Llq8$a;

    iget-object p0, p0, Lyp8;->c:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Llq8$a;->a(Ljava/lang/reflect/Type;)Llq8;

    move-result-object p0

    return-object p0
.end method
