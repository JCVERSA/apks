.class public final Lorg/libtorrent4j/alerts/Alerts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/alerts/Alerts$CastLambda;
    }
.end annotation


# static fields
.field public static final NUM_ALERT_TYPES:I

.field private static final TABLE:[Lorg/libtorrent4j/alerts/Alerts$CastLambda;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getNum_alert_types()I

    move-result v0

    sput v0, Lorg/libtorrent4j/alerts/Alerts;->NUM_ALERT_TYPES:I

    invoke-static {}, Lorg/libtorrent4j/alerts/Alerts;->buildTable()[Lorg/libtorrent4j/alerts/Alerts$CastLambda;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/alerts/Alerts;->TABLE:[Lorg/libtorrent4j/alerts/Alerts$CastLambda;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;
    .locals 0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/Alerts;->handleUnknownAlert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;

    move-result-object p0

    return-object p0
.end method

.method private static buildTable()[Lorg/libtorrent4j/alerts/Alerts$CastLambda;
    .locals 3

    sget v0, Lorg/libtorrent4j/alerts/Alerts;->NUM_ALERT_TYPES:I

    new-array v0, v0, [Lorg/libtorrent4j/alerts/Alerts$CastLambda;

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$1;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$2;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$2;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$3;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$3;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$4;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$4;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$5;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$5;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$6;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$6;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$7;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$7;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$8;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$8;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$9;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$9;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$10;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$10;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$11;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$11;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$12;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$12;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$13;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$13;-><init>()V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$14;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$14;-><init>()V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$15;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$15;-><init>()V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$16;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$16;-><init>()V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$17;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$17;-><init>()V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$18;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$18;-><init>()V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$19;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$19;-><init>()V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$20;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$20;-><init>()V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$21;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$21;-><init>()V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$22;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$22;-><init>()V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$23;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$23;-><init>()V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$24;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$24;-><init>()V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$25;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$25;-><init>()V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$26;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$26;-><init>()V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$27;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$27;-><init>()V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$28;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$28;-><init>()V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$29;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$29;-><init>()V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$30;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$30;-><init>()V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$31;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$31;-><init>()V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$32;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$32;-><init>()V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$33;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$33;-><init>()V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$34;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$34;-><init>()V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$35;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$35;-><init>()V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$36;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$36;-><init>()V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$37;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$37;-><init>()V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$38;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$38;-><init>()V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$39;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$39;-><init>()V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$40;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$40;-><init>()V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$41;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$41;-><init>()V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$42;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$42;-><init>()V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$43;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$43;-><init>()V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$44;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$44;-><init>()V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$45;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$45;-><init>()V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$46;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$46;-><init>()V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$47;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$47;-><init>()V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$48;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$48;-><init>()V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$49;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$49;-><init>()V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$50;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$50;-><init>()V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$51;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$51;-><init>()V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$52;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$52;-><init>()V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$53;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$53;-><init>()V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$54;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$54;-><init>()V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$55;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$55;-><init>()V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$56;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$56;-><init>()V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$57;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$57;-><init>()V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$58;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$58;-><init>()V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$59;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$59;-><init>()V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$60;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$60;-><init>()V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$61;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$61;-><init>()V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$62;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$62;-><init>()V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$63;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$63;-><init>()V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$64;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$64;-><init>()V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$65;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$65;-><init>()V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$66;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$66;-><init>()V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$67;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$67;-><init>()V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$68;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$68;-><init>()V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$69;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$69;-><init>()V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$70;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$70;-><init>()V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$71;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$71;-><init>()V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$72;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$72;-><init>()V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$73;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$73;-><init>()V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$74;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$74;-><init>()V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$75;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$75;-><init>()V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$76;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$76;-><init>()V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$77;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$77;-><init>()V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$78;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$78;-><init>()V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$79;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$79;-><init>()V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$80;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$80;-><init>()V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$81;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$81;-><init>()V

    const/16 v2, 0x50

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$82;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$82;-><init>()V

    const/16 v2, 0x51

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$83;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$83;-><init>()V

    const/16 v2, 0x52

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$84;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$84;-><init>()V

    const/16 v2, 0x53

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$85;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$85;-><init>()V

    const/16 v2, 0x54

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$86;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$86;-><init>()V

    const/16 v2, 0x55

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$87;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$87;-><init>()V

    const/16 v2, 0x56

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$88;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$88;-><init>()V

    const/16 v2, 0x57

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$89;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$89;-><init>()V

    const/16 v2, 0x58

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$90;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$90;-><init>()V

    const/16 v2, 0x59

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$91;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$91;-><init>()V

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$92;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$92;-><init>()V

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$93;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$93;-><init>()V

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$94;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$94;-><init>()V

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$95;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$95;-><init>()V

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$96;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$96;-><init>()V

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$97;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$97;-><init>()V

    const/16 v2, 0x60

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$98;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$98;-><init>()V

    const/16 v2, 0x61

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$99;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$99;-><init>()V

    const/16 v2, 0x62

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$100;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$100;-><init>()V

    const/16 v2, 0x63

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$101;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$101;-><init>()V

    const/16 v2, 0x64

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$102;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$102;-><init>()V

    const/16 v2, 0x65

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$103;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$103;-><init>()V

    const/16 v2, 0x66

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$104;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$104;-><init>()V

    const/16 v2, 0x67

    aput-object v1, v0, v2

    new-instance v1, Lorg/libtorrent4j/alerts/Alerts$105;

    invoke-direct {v1}, Lorg/libtorrent4j/alerts/Alerts$105;-><init>()V

    const/16 v2, 0x68

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static cast(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;
    .locals 2

    sget-object v0, Lorg/libtorrent4j/alerts/Alerts;->TABLE:[Lorg/libtorrent4j/alerts/Alerts$CastLambda;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert;->type()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0, p0}, Lorg/libtorrent4j/alerts/Alerts$CastLambda;->cast(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;

    move-result-object p0

    return-object p0
.end method

.method private static handleUnknownAlert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/swig/alert;",
            ")",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alert not known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert;->type()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
