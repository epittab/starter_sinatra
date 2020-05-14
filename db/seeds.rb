Machine.destroy_all
MachinePart.destroy_all
Part.destroy_all

# machine

mach1 = Machine.create(name: "Civic", machine_type: "Car", brand: "Honda", in_production: true)
mach2 = Machine.create(name: "Camry", machine_type: "Car", brand: "Toyota", in_production: true)
mach3 = Machine.create(name: "Accord", machine_type: "Car", brand: "Honda", in_production: true)
mach4 = Machine.create(name: "RSX", machine_type: "Car", brand: "Acura", in_production: true)
mach5 = Machine.create(name: "3", machine_type: "Car", brand: "Tesla", in_production: true)
mach6 = Machine.create(name: "328xi", machine_type: "Car", brand: "BMW", in_production: true)
mach7 = Machine.create(name: "RX-7", machine_type: "Car", brand: "Mazda", in_production: false)


# parts

engine = Part.create(name: "Engine", brand: "Honda OEM", reference_number: 1)
engine2 = Part.create(name: "Engine", brand: "Toyota OEM", reference_number: 1)
engine3 = Part.create(name: "Engine", brand: "Mazda OEM", reference_number: 100)
brake1 = Part.create(name: "Brake", brand: "Brembo", reference_number: 23421)
brake2 = Part.create(name: "Brake", brand: "EBC", reference_number: 12345)
brake3 = Part.create(name: "Brake", brand: "AC Delco", reference_number: 8756)
brake4 = Part.create(name: "Brake", brand: "Raybestos", reference_number: 1243)

# machine_parts

mp1 = MachinePart.create(machine_id: mach1.id, part_id: engine.id)
mp2 = MachinePart.create(machine_id: mach3.id, part_id: engine.id)
mp3 = MachinePart.create(machine_id: mach1.id, part_id: brake1.id)
mp4 = MachinePart.create(machine_id: mach3.id, part_id: brake3.id)
mp5 = MachinePart.create(machine_id: mach2.id, part_id: engine2.id)
mp6 = MachinePart.create(machine_id: mach2.id, part_id: brake4.id)

MachinePart.create(machine_id: mach4.id, part_id: engine.id)
MachinePart.create(machine_id: mach4.id, part_id: brake2.id)

MachinePart.create(machine_id: mach5.id, part_id: brake4.id)
MachinePart.create(machine_id: mach6.id, part_id: brake1.id)

MachinePart.create(machine_id: mach7.id, part_id: engine3.id)
MachinePart.create(machine_id: mach7.id, part_id: brake1.id)

