.class public final synthetic Lfr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lkotlin/text/Regex;

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfr8;->b:Lkotlin/text/Regex;

    iput-object p2, p0, Lfr8;->c:Ljava/lang/CharSequence;

    iput p3, p0, Lfr8;->d:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfr8;->b:Lkotlin/text/Regex;

    iget-object v1, p0, Lfr8;->c:Ljava/lang/CharSequence;

    iget p0, p0, Lfr8;->d:I

    invoke-static {v0, v1, p0}, Lkotlin/text/Regex;->a(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lc26;

    move-result-object p0

    return-object p0
.end method
