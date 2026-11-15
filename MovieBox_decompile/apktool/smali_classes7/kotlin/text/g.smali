.class public final synthetic Lkotlin/text/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlin/text/Regex;

.field public final synthetic b:Ljava/lang/CharSequence;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/text/g;->a:Lkotlin/text/Regex;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlin/text/g;->b:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput p3, p0, Lkotlin/text/g;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/text/g;->a:Lkotlin/text/Regex;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/text/g;->b:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget v2, p0, Lkotlin/text/g;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lkotlin/text/Regex;->a(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
