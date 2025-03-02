import 'package:equatable/equatable.dart';

class HomeModel extends Equatable {
	final int? id;
	final String? name;
	final dynamic competenciesId;
	final String? description;
	final double? classDuration;
	final int? categoryId;
	final String? categoryName;
	final double? minPax;
	final double? maxPax;
	final double? semiPrivateMinPax;
	final double? semiPrivateMaxPax;
	final double? privateMinPax;
	final double? privateMaxPax;
	final String? lessonDescription;
	final double? numOfClasses;
	final int? lessonLevel;
	final bool? beginner;
	final bool? intermediate;
	final bool? advanced;
	final String? dbName;
	final int? rate;
	final int? rateCount;
	final double? discount;
	final int? givePoints;
	final int? groupRedeemPoints;
	final int? privateRedeemPoints;
	final int? semiPrivateRedeemPoints;
	final bool? tripsHire;
	final bool? fullClassesLesson;
	final bool? openClassesLesson;
	final bool? seasonalLesson;
	final bool? normalLesson;
	final bool? lessonRepetition;
	final String? groupActive;
	final String? privateActive;
	final String? semiPrivateActive;
	final bool? childGroup;
	final bool? adultGroup;
	final bool? childPrivate;
	final bool? adultPrivate;
	final bool? childSemiPrivate;
	final bool? adultSemiPrivate;
	final int? childOwnHorseGroup;
	final int? childClubHorseGroup;
	final int? childOwnHorsePrivate;
	final int? childClubHorsePrivate;
	final int? childOwnHorseSemiPrivate;
	final int? childClubHorseSemiPrivate;
	final int? adultOwnHorseGroup;
	final int? adultClubHorseGroup;
	final int? adultOwnHorsePrivate;
	final int? adultClubHorsePrivate;
	final int? adultOwnHorseSemiPrivate;
	final int? adultClubHorseSemiPrivate;
	final String? startingDate;
	final String? seasonStartingDate;
	final String? seasonEndDate;
	final String? tripStartingDate;
	final String? tripEndDate;
	final String? openLessonEndDate;
	final bool? tripmo;
	final bool? triptu;
	final bool? tripwe;
	final bool? tripth;
	final bool? tripfr;
	final bool? tripsa;
	final bool? tripsu;
	final bool? oneInterval;
	final bool? twoInterval;
	final bool? threeInterval;
	final String? interval1FromTime;
	final String? interval1ToTime;
	final String? interval2FromTime;
	final String? interval2ToTime;
	final String? interval3FromTime;
	final String? interval3ToTime;
	final String? tripInterval1FromTime;
	final String? tripInterval1ToTime;
	final String? tripInterval2FromTime;
	final String? tripInterval2ToTime;
	final String? tripInterval3FromTime;
	final String? tripInterval3ToTime;
	final bool? include1ClassPackage;
	final int? packageBuy1;
	final int? packageBuy2;
	final int? packageBuy3;
	final int? packagePercentage1Discount;
	final int? packageFixed1Discount;
	final int? packagePoints1;
	final int? packagePercentage2Discount;
	final int? packageFixed2Discount;
	final int? packagePoints2;
	final int? packagePercentage3Discount;
	final int? packageFixed3Discount;
	final int? packagePoints3;
	final bool? clubPromotion;
	final int? additionalDiscount;
	final int? additionalDiscountFixed;
	final int? additionalDiscountPercentage;
	final bool? equinaPromotion;
	final bool? booked;
	final String? lessonLevelString;
	final String? lessonLevelFilter;
	final List<dynamic>? days;
	final int? startingPrice;
	final String? imageUrl;
	final bool? group;
	final bool? private;
	final bool? semiPrivate;
	final String? lessonCurrency;
	final String? clubName;
	final String? clubPhone;
	final String? lat;
	final String? long;
	final String? clubAddress;
	final int? clubRating;
	final String? clubDescription;
	final int? rangeOfPricesFrom;
	final int? rangeOfPricesTo;
	final int? horsesNumber;
	final String? trainingTypes;
	final String? specializedIn;
	final String? lessontype;
	final String? courseEndDate;

	const HomeModel({
		this.id, 
		this.name, 
		this.competenciesId, 
		this.description, 
		this.classDuration, 
		this.categoryId, 
		this.categoryName, 
		this.minPax, 
		this.maxPax, 
		this.semiPrivateMinPax, 
		this.semiPrivateMaxPax, 
		this.privateMinPax, 
		this.privateMaxPax, 
		this.lessonDescription, 
		this.numOfClasses, 
		this.lessonLevel, 
		this.beginner, 
		this.intermediate, 
		this.advanced, 
		this.dbName, 
		this.rate, 
		this.rateCount, 
		this.discount, 
		this.givePoints, 
		this.groupRedeemPoints, 
		this.privateRedeemPoints, 
		this.semiPrivateRedeemPoints, 
		this.tripsHire, 
		this.fullClassesLesson, 
		this.openClassesLesson, 
		this.seasonalLesson, 
		this.normalLesson, 
		this.lessonRepetition, 
		this.groupActive, 
		this.privateActive, 
		this.semiPrivateActive, 
		this.childGroup, 
		this.adultGroup, 
		this.childPrivate, 
		this.adultPrivate, 
		this.childSemiPrivate, 
		this.adultSemiPrivate, 
		this.childOwnHorseGroup, 
		this.childClubHorseGroup, 
		this.childOwnHorsePrivate, 
		this.childClubHorsePrivate, 
		this.childOwnHorseSemiPrivate, 
		this.childClubHorseSemiPrivate, 
		this.adultOwnHorseGroup, 
		this.adultClubHorseGroup, 
		this.adultOwnHorsePrivate, 
		this.adultClubHorsePrivate, 
		this.adultOwnHorseSemiPrivate, 
		this.adultClubHorseSemiPrivate, 
		this.startingDate, 
		this.seasonStartingDate, 
		this.seasonEndDate, 
		this.tripStartingDate, 
		this.tripEndDate, 
		this.openLessonEndDate, 
		this.tripmo, 
		this.triptu, 
		this.tripwe, 
		this.tripth, 
		this.tripfr, 
		this.tripsa, 
		this.tripsu, 
		this.oneInterval, 
		this.twoInterval, 
		this.threeInterval, 
		this.interval1FromTime, 
		this.interval1ToTime, 
		this.interval2FromTime, 
		this.interval2ToTime, 
		this.interval3FromTime, 
		this.interval3ToTime, 
		this.tripInterval1FromTime, 
		this.tripInterval1ToTime, 
		this.tripInterval2FromTime, 
		this.tripInterval2ToTime, 
		this.tripInterval3FromTime, 
		this.tripInterval3ToTime, 
		this.include1ClassPackage, 
		this.packageBuy1, 
		this.packageBuy2, 
		this.packageBuy3, 
		this.packagePercentage1Discount, 
		this.packageFixed1Discount, 
		this.packagePoints1, 
		this.packagePercentage2Discount, 
		this.packageFixed2Discount, 
		this.packagePoints2, 
		this.packagePercentage3Discount, 
		this.packageFixed3Discount, 
		this.packagePoints3, 
		this.clubPromotion, 
		this.additionalDiscount, 
		this.additionalDiscountFixed, 
		this.additionalDiscountPercentage, 
		this.equinaPromotion, 
		this.booked, 
		this.lessonLevelString, 
		this.lessonLevelFilter, 
		this.days, 
		this.startingPrice, 
		this.imageUrl, 
		this.group, 
		this.private, 
		this.semiPrivate, 
		this.lessonCurrency, 
		this.clubName, 
		this.clubPhone, 
		this.lat, 
		this.long, 
		this.clubAddress, 
		this.clubRating, 
		this.clubDescription, 
		this.rangeOfPricesFrom, 
		this.rangeOfPricesTo, 
		this.horsesNumber, 
		this.trainingTypes, 
		this.specializedIn, 
		this.lessontype, 
		this.courseEndDate, 
	});

	factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
				id: json['id'] as int?,
				name: json['name'] as String?,
				competenciesId: json['competencies_id'] as dynamic,
				description: json['description'] as String?,
				classDuration: json['class_duration'] as double?,
				categoryId: json['category_id'] as int?,
				categoryName: json['category_name'] as String?,
				minPax: json['min_pax'] as double?,
				maxPax: json['max_pax'] as double?,
				semiPrivateMinPax: json['semi_private_min_pax'] as double?,
				semiPrivateMaxPax: json['semi_private_max_pax'] as double?,
				privateMinPax: json['private_min_pax'] as double?,
				privateMaxPax: json['private_max_pax'] as double?,
				lessonDescription: json['lesson_description'] as String?,
				numOfClasses: json['num_of_classes'] as double?,
				lessonLevel: json['lesson_level'] as int?,
				beginner: json['beginner'] as bool?,
				intermediate: json['intermediate'] as bool?,
				advanced: json['advanced'] as bool?,
				dbName: json['db_name'] as String?,
				rate: json['rate'] as int?,
				rateCount: json['rate_count'] as int?,
				discount: json['discount'] as double?,
				givePoints: json['give_points'] as int?,
				groupRedeemPoints: json['group_redeem_points'] as int?,
				privateRedeemPoints: json['private_redeem_points'] as int?,
				semiPrivateRedeemPoints: json['semi_private_redeem_points'] as int?,
				tripsHire: json['trips_hire'] as bool?,
				fullClassesLesson: json['full_classes_lesson'] as bool?,
				openClassesLesson: json['open_classes_lesson'] as bool?,
				seasonalLesson: json['seasonal_lesson'] as bool?,
				normalLesson: json['normal_lesson'] as bool?,
				lessonRepetition: json['lesson_repetition'] as bool?,
				groupActive: json['group_active'] as String?,
				privateActive: json['private_active'] as String?,
				semiPrivateActive: json['semi_private_active'] as String?,
				childGroup: json['child_group'] as bool?,
				adultGroup: json['adult_group'] as bool?,
				childPrivate: json['child_private'] as bool?,
				adultPrivate: json['adult_private'] as bool?,
				childSemiPrivate: json['child_semi_private'] as bool?,
				adultSemiPrivate: json['adult_semi_private'] as bool?,
				
				startingDate: json['starting_date'] as String?,
				seasonStartingDate: json['season_starting_date'] as String?,
				seasonEndDate: json['season_end_date'] as String?,
				tripStartingDate: json['trip_starting_date'] as String?,
				tripEndDate: json['trip_end_date'] as String?,
				openLessonEndDate: json['open_lesson_end_date'] as String?,
				
				tripInterval3FromTime: json['trip_interval_3_from_time'] as String?,
				tripInterval3ToTime: json['trip_interval_3_to_time'] as String?,
				include1ClassPackage: json['include_1_class_package'] as bool?,
				
				clubPromotion: json['club_promotion'] as bool?,
				
				equinaPromotion: json['equina_promotion'] as bool?,
				booked: json['booked'] as bool?,
				lessonLevelString: json['lesson_level_string'] as String?,
				lessonLevelFilter: json['lesson_level_filter'] as String?,
				days: json['days'] as List<dynamic>?,
				
				imageUrl: json['image_url'] as String?,
				group: json['group'] as bool?,
				private: json['private'] as bool?,
				semiPrivate: json['semi_private'] as bool?,
				lessonCurrency: json['lesson_currency'] as String?,
				clubName: json['club_name'] as String?,
				clubPhone: json['club_phone'] as String?,
				lat: json['lat'] as String?,
				long: json['long'] as String?,
				clubAddress: json['club_address'] as String?,
				clubDescription: json['club_description'] as String?,
				horsesNumber: json['horses_number'] as int?,
				trainingTypes: json['training_types'] as String?,
				specializedIn: json['specialized_in'] as String?,
				lessontype: json['lessontype'] as String?,
				courseEndDate: json['course_end_date'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'competencies_id': competenciesId,
				'description': description,
				'class_duration': classDuration,
				'category_id': categoryId,
				'category_name': categoryName,
				'min_pax': minPax,
				'max_pax': maxPax,
				'semi_private_min_pax': semiPrivateMinPax,
				'semi_private_max_pax': semiPrivateMaxPax,
				'private_min_pax': privateMinPax,
				'private_max_pax': privateMaxPax,
				'lesson_description': lessonDescription,
				'num_of_classes': numOfClasses,
				'lesson_level': lessonLevel,
				'beginner': beginner,
				'intermediate': intermediate,
				'advanced': advanced,
				'db_name': dbName,
				'rate': rate,
				'rate_count': rateCount,
				'discount': discount,
				'give_points': givePoints,
				'group_redeem_points': groupRedeemPoints,
				'private_redeem_points': privateRedeemPoints,
				'semi_private_redeem_points': semiPrivateRedeemPoints,
				'trips_hire': tripsHire,
				'full_classes_lesson': fullClassesLesson,
				'open_classes_lesson': openClassesLesson,
				'seasonal_lesson': seasonalLesson,
				'normal_lesson': normalLesson,
				'lesson_repetition': lessonRepetition,
				'group_active': groupActive,
				'private_active': privateActive,
				'semi_private_active': semiPrivateActive,
				'child_group': childGroup,
				'adult_group': adultGroup,
				'child_private': childPrivate,
				'adult_private': adultPrivate,
				'child_semi_private': childSemiPrivate,
				'adult_semi_private': adultSemiPrivate,
				'child_own_horse_group': childOwnHorseGroup,
				'child_club_horse_group': childClubHorseGroup,
				'child_own_horse_private': childOwnHorsePrivate,
				'child_club_horse_private': childClubHorsePrivate,
				'child_own_horse_semi_private': childOwnHorseSemiPrivate,
				'child_club_horse_semi_private': childClubHorseSemiPrivate,
				'adult_own_horse_group': adultOwnHorseGroup,
				'adult_club_horse_group': adultClubHorseGroup,
				'adult_own_horse_private': adultOwnHorsePrivate,
				'adult_club_horse_private': adultClubHorsePrivate,
				'adult_own_horse_semi_private': adultOwnHorseSemiPrivate,
				'adult_club_horse_semi_private': adultClubHorseSemiPrivate,
				'starting_date': startingDate,
				'season_starting_date': seasonStartingDate,
				'season_end_date': seasonEndDate,
				'trip_starting_date': tripStartingDate,
				'trip_end_date': tripEndDate,
				'open_lesson_end_date': openLessonEndDate,
				'tripmo': tripmo,
				'triptu': triptu,
				'tripwe': tripwe,
				'tripth': tripth,
				'tripfr': tripfr,
				'tripsa': tripsa,
				'tripsu': tripsu,
				'one_interval': oneInterval,
				'two_interval': twoInterval,
				'three_interval': threeInterval,
				'interval_1_from_time': interval1FromTime,
				'interval_1_to_time': interval1ToTime,
				'interval_2_from_time': interval2FromTime,
				'interval_2_to_time': interval2ToTime,
				'interval_3_from_time': interval3FromTime,
				'interval_3_to_time': interval3ToTime,
				'trip_interval_1_from_time': tripInterval1FromTime,
				'trip_interval_1_to_time': tripInterval1ToTime,
				'trip_interval_2_from_time': tripInterval2FromTime,
				'trip_interval_2_to_time': tripInterval2ToTime,
				'trip_interval_3_from_time': tripInterval3FromTime,
				'trip_interval_3_to_time': tripInterval3ToTime,
				'include_1_class_package': include1ClassPackage,
				'package_buy_1': packageBuy1,
				'package_buy_2': packageBuy2,
				'package_buy_3': packageBuy3,
				'package_percentage_1_discount': packagePercentage1Discount,
				'package_fixed_1_discount': packageFixed1Discount,
				'package_points_1': packagePoints1,
				'package_percentage_2_discount': packagePercentage2Discount,
				'package_fixed_2_discount': packageFixed2Discount,
				'package_points_2': packagePoints2,
				'package_percentage_3_discount': packagePercentage3Discount,
				'package_fixed_3_discount': packageFixed3Discount,
				'package_points_3': packagePoints3,
				'club_promotion': clubPromotion,
				'additional_discount': additionalDiscount,
				'additional_discount_fixed': additionalDiscountFixed,
				'additional_discount_percentage': additionalDiscountPercentage,
				'equina_promotion': equinaPromotion,
				'booked': booked,
				'lesson_level_string': lessonLevelString,
				'lesson_level_filter': lessonLevelFilter,
				'days': days,
				'starting_price': startingPrice,
				'image_url': imageUrl,
				'group': group,
				'private': private,
				'semi_private': semiPrivate,
				'lesson_currency': lessonCurrency,
				'club_name': clubName,
				'club_phone': clubPhone,
				'lat': lat,
				'long': long,
				'club_address': clubAddress,
				'club_rating': clubRating,
				'club_description': clubDescription,
				'range_of_prices_from': rangeOfPricesFrom,
				'range_of_prices_to': rangeOfPricesTo,
				'horses_number': horsesNumber,
				'training_types': trainingTypes,
				'specialized_in': specializedIn,
				'lessontype': lessontype,
				'course_end_date': courseEndDate,
			};

	@override
	List<Object?> get props {
		return [
				id,
				name,
				competenciesId,
				description,
				classDuration,
				categoryId,
				categoryName,
				minPax,
				maxPax,
				semiPrivateMinPax,
				semiPrivateMaxPax,
				privateMinPax,
				privateMaxPax,
				lessonDescription,
				numOfClasses,
				lessonLevel,
				beginner,
				intermediate,
				advanced,
				dbName,
				rate,
				rateCount,
				discount,
				givePoints,
				groupRedeemPoints,
				privateRedeemPoints,
				semiPrivateRedeemPoints,
				tripsHire,
				fullClassesLesson,
				openClassesLesson,
				seasonalLesson,
				normalLesson,
				lessonRepetition,
				groupActive,
				privateActive,
				semiPrivateActive,
				childGroup,
				adultGroup,
				childPrivate,
				adultPrivate,
				childSemiPrivate,
				adultSemiPrivate,
				childOwnHorseGroup,
				childClubHorseGroup,
				childOwnHorsePrivate,
				childClubHorsePrivate,
				childOwnHorseSemiPrivate,
				childClubHorseSemiPrivate,
				adultOwnHorseGroup,
				adultClubHorseGroup,
				adultOwnHorsePrivate,
				adultClubHorsePrivate,
				adultOwnHorseSemiPrivate,
				adultClubHorseSemiPrivate,
				startingDate,
				seasonStartingDate,
				seasonEndDate,
				tripStartingDate,
				tripEndDate,
				openLessonEndDate,
				tripmo,
				triptu,
				tripwe,
				tripth,
				tripfr,
				tripsa,
				tripsu,
				oneInterval,
				twoInterval,
				threeInterval,
				interval1FromTime,
				interval1ToTime,
				interval2FromTime,
				interval2ToTime,
				interval3FromTime,
				interval3ToTime,
				tripInterval1FromTime,
				tripInterval1ToTime,
				tripInterval2FromTime,
				tripInterval2ToTime,
				tripInterval3FromTime,
				tripInterval3ToTime,
				include1ClassPackage,
				packageBuy1,
				packageBuy2,
				packageBuy3,
				packagePercentage1Discount,
				packageFixed1Discount,
				packagePoints1,
				packagePercentage2Discount,
				packageFixed2Discount,
				packagePoints2,
				packagePercentage3Discount,
				packageFixed3Discount,
				packagePoints3,
				clubPromotion,
				additionalDiscount,
				additionalDiscountFixed,
				additionalDiscountPercentage,
				equinaPromotion,
				booked,
				lessonLevelString,
				lessonLevelFilter,
				days,
				startingPrice,
				imageUrl,
				group,
				private,
				semiPrivate,
				lessonCurrency,
				clubName,
				clubPhone,
				lat,
				long,
				clubAddress,
				clubRating,
				clubDescription,
				rangeOfPricesFrom,
				rangeOfPricesTo,
				horsesNumber,
				trainingTypes,
				specializedIn,
				lessontype,
				courseEndDate,
		];
	}
}
