.class public Lorg/apache/commons/lang3/time/DateFormatUtils;
.super Ljava/lang/Object;
.source "DateFormatUtils.java"


# static fields
.field public static final ISO_DATETIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_DATETIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_DATE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_DATE_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_TIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_TIME_NO_T_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_TIME_NO_T_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_TIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final SMTP_DATETIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field private static final UTC_TIME_ZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    .line 44
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_DATETIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 51
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZZ"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_DATETIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 58
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_DATE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 67
    const-string v0, "yyyy-MM-ddZZ"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_DATE_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 74
    const-string v0, "\'T\'HH:mm:ss"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 81
    const-string v0, "\'T\'HH:mm:ssZZ"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 90
    const-string v0, "HH:mm:ss"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_NO_T_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 99
    const-string v0, "HH:mm:ssZZ"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_NO_T_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 106
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->SMTP_DATETIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "millis"
    .parameter "pattern"

    .prologue
    const/4 v1, 0x0

    .line 174
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2, v1, v1}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "millis"
    .parameter "pattern"
    .parameter "locale"

    .prologue
    .line 248
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p3}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .parameter "millis"
    .parameter "pattern"
    .parameter "timeZone"

    .prologue
    .line 210
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "millis"
    .parameter "pattern"
    .parameter "timeZone"
    .parameter "locale"

    .prologue
    .line 287
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2, p3, p4}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "calendar"
    .parameter "pattern"

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "calendar"
    .parameter "pattern"
    .parameter "locale"

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .parameter "calendar"
    .parameter "pattern"
    .parameter "timeZone"

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "calendar"
    .parameter "pattern"
    .parameter "timeZone"
    .parameter "locale"

    .prologue
    .line 316
    invoke-static {p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    .line 317
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "pattern"

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "pattern"
    .parameter "locale"

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "pattern"
    .parameter "timeZone"

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "pattern"
    .parameter "timeZone"
    .parameter "locale"

    .prologue
    .line 300
    invoke-static {p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    .line 301
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUTC(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "millis"
    .parameter "pattern"

    .prologue
    .line 128
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object v1, Lorg/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUTC(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "millis"
    .parameter "pattern"
    .parameter "locale"

    .prologue
    .line 151
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object v1, Lorg/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-static {v0, p2, v1, p3}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUTC(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "pattern"

    .prologue
    .line 139
    sget-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUTC(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "pattern"
    .parameter "locale"

    .prologue
    .line 163
    sget-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
