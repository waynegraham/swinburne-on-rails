# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Edition.create(title: 'Poems and Ballads', author: 'Algernon Charles Swinburne')

Witness.create(title: 'Poems and Ballads', author: 'Algernon Charles Swinburne', publisher: 'Edward Moxon and Co.', pub_place: 'London', year: 1866, code: 'mu', note: 'Initial printing, Moxon 1866 with printer\'s errors (Not yet collated. Any information re: this volume comes from collations by T. J. Wise and my examination of E). True MUs reported in libraries of Mark Samuels Lasner and Cecil Lang.')
Witness.create(title: 'Poems and Ballads', author: 'Algernon Charles Swinburne', publisher: 'Edward Moxon and Co.', pub_place: 'London', year: 1866, code: 'mc', note: 'Same edition as MU with errors detected by ACS corrected, 1866. Examined: UVA Special Collections and library of Jerome J. McGann. ')
Witness.create(title: 'Poems and Ballads', author: 'Algernon Charles Swinburne', publisher: 'Edward Moxon and Co.', pub_place: 'London', year: 1866, code: 'hm', note: 'Moxon remainders with Hotten title-page inserted. Initially found no variants between UVA Special Collections copy and MC (therefore HMC), but Nowviskie HM copy varies. To disentangle.')
Witness.create(title: 'Poems and Ballads', author: 'Algernon Charles Swinburne', publisher: 'Edward Moxon and Co.', pub_place: 'London', year: 1866, code: 'e', note: 'Emory copy, a potential HMU (Moxon Uncorrected with Hottens title page tipped in), later re-bound. NB variants 1.4 and 146.5 - my only witness so far to those readings.')
Witness.create(title: 'Poems and Ballads', author: 'Algernon Charles Swinburne', publisher: 'Edward Moxon and Co.', pub_place: 'London', year: 1866, code: 'hr', note: 'First Hotten reprint set from MU 1866, with additional errors. Examined: Library of Jerome J. McGann.')
Witness.create(title: 'Poems and Ballads', author: 'Algernon Charles Swinburne', publisher: 'Edward Moxon and Co.', pub_place: 'London', year: 1866, code: 'ny', note: 'Carleton/Moxon "Author\'s Edition" 1866 (set from MU with spelling Americanized, punctuation regularized, and additional errors). xamined: Alderman Library and Special Collections, UVA. (Americanized spellings in a separate listing.)')
Witness.create(title: 'Poems and Ballads', author: 'Algernon Charles Swinburne', publisher: 'Edward Moxon and Co.', pub_place: 'London', year: 1866, code: 'cw', note: 'Chatto &amp; Windus (Harper\'s) edition, 1904. Examined: Alderman Library, UVA, and Chadwyck-Healey electronic edition.')

Opening.create(running_title: 'A BALLAD OF LIFE', verso_page_number: '[1]', recto_page_number: '2')
Opening.create(running_title: 'A BALLAD OF LIFE', verso_page_number: '3', recto_page_number: '4')
Opening.create(running_title: 'A BALLAD OF DEATH', verso_page_number: '[5]', recto_page_number: '6')
