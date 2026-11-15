.class Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$$Lambda$0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$0:Ls74;


# direct methods
.method public constructor <init>(Ls74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$$Lambda$0;->arg$0:Ls74;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$$Lambda$0;->arg$0:Ls74;

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->p(Ls74;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
